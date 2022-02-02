// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0; //needs the license mentioned above

//import "hardhat/console.sol";

contract Transactions {
    uint256 transactionCount; //Hold the number of our transactions

    //A function that gets called later
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
    //A structr for our transfer
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    //Since this is a class, we want this to be public so it can be usable
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    //This is public viewable only
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}