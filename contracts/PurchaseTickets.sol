// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

contract PurchaseTickets {
    address public owner;
    uint256 public num;

    mapping(address => bool) public ticketPurchased;

    mapping(address => uint) public balance;

    modifier Onlyowner() {
        require(msg.sender == owner);
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function purchaseTicket() public {
        ticketPurchased[msg.sender] = true;
    }

    function checkPurchase() public view returns (bool) {
        return ticketPurchased[msg.sender];
    }
}
