-include .env

.PHONY: source .env

# This is the first private key of account from from the "make anvil" command
# Example on how to run this command: "make deploy-anvil contract=MockERC20", remember to first run "make anvil"
deploy-anvil :; @forge script script/${contract}.s.sol:Deploy${contract} --rpc-url http://localhost:8545  --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast -vvvv

# Example on how to run this command: "make deploy-mumbai contract=MockERC20"
deploy-mumbai :; @forge script script/${contract}.s.sol:Deploy${contract} --rpc-url ${MUMBAI_RPC_URL}  --private-key ${PRIVATE_KEY} --broadcast --verify --etherscan-api-key ${POLYGON_API_KEY} -vvvv --slow

deploy-polygon :; @forge script script/${contract}.s.sol:Deploy${contract} --rpc-url ${POLYGON_RPC_URL}  --private-key ${PRIVATE_KEY} --broadcast --verify --etherscan-api-key ${POLYGON_API_KEY} -vvvv --slow

# Only add command --legacy if EIP-1559 not supported https://book.getfoundry.sh/forge/deploying?highlight=legacy#troubleshooting
deploy-all :; make deploy-${network} contract=MockERC20
