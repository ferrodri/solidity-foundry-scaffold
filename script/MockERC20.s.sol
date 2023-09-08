/// SPDX-License-Identifier: MIT
pragma solidity =0.8.21;

import "forge-std/Script.sol";
import "src/MockERC20.sol";

contract DeployMockERC20 is Script {
    MockERC20 public mockERC20;

    function run() public {
        vm.startBroadcast();

        mockERC20 = new MockERC20();

        vm.stopBroadcast();
    }
}
