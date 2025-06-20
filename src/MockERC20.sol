// SPDX-License-Identifier: MIT
pragma solidity =0.8.30;

import {ERC20} from "solmate/tokens/ERC20.sol";

contract MockERC20 is ERC20("MockERC20", "ERC20", 18) {
    function mint(address to) public {
        _mint(to, 10000);
    }
}
