# foundry-diamond-deploy
Minimal example of a Diamond deployment script using foundry.

## Requirements:
  - foundry installed (https://book.getfoundry.sh/getting-started/installation)
  - python3 installed
  - `pip install eth-abi`

## Examples
  - With anvil running: `forge script script/Deploy.s.sol --ffi --fork-url http://localhost:8545  --broadcast --verify -vvvv`
  - Deploy on testnet/mainnet: `forge script script/Deploy.s.sol --ffi --rpc-url $MY_RPC_URL  --broadcast --verify -vvvv`
