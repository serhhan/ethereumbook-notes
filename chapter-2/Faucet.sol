// SPDX-License-Identifier: CC-BY-SA-4.0
pragma solidity ^0.8.24;

contract Faucet {
    receive() external payable {}

    function withdraw(uint256 withdraw_amount) public {
        require(withdraw_amount <= 100000000000000000);
        payable(msg.sender).transfer(withdraw_amount);
    }
}