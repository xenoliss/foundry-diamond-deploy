import subprocess
import argparse
import json


from eth_abi import encode


def get_selectors(args):
    contract = args.contract

    res = subprocess.run(
        ["forge", "inspect", contract, "mi"], capture_output=True)
    res = res.stdout.decode()
    res = json.loads(res)

    selectors = []
    for signature in res:
        selector = res[signature]
        selectors.append(bytes.fromhex(selector))

    enc = encode(["bytes4[]"], [selectors])
    print("0x" + enc.hex())


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("contract", type=str)
    return parser.parse_args()


def main():
    args = parse_args()
    get_selectors(args)


if __name__ == "__main__":
    main()
