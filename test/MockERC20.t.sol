// SPDX-License-Identifier: MIT
pragma solidity =0.8.21;

import "forge-std/Test.sol";
import "src/MockERC20.sol";

contract MockERC20Test is Test {
    address public alice = address(1);

    MockERC20 public mockERC20;

    function setUp() public {
        mockERC20 = new MockERC20();
        mockERC20.mint(alice);
    }

    function test_Name() public {
        assertEq(mockERC20.name(), "MockERC20");
    }
}
