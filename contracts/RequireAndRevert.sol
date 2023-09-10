pragma solidity ^0.8.9;

// require
// revert
// assert

contract Demo {
    address owner;

    // event
    event Paid(address indexed _from, uint _amount, uint _timestamp); // if we have indexed, we may realize finding


    constructor() {
        owner = msg.sender;
    }

    function pay() external payable {
        emit Paid(msg.sender, msg.value, block.timestamp);
    }

    address demoAddr;

    modifier onlyOwner(address _to) {
        require(msg.sender == owner, "you are not an owner!");
        require(_to != address(0), "incorrect address!");
        _; // exit the modifier, and go to the function
    }

    function withdraw(address payable _to) external onlyOwner {
        // require(msg.sender == owner, "you are not an owner!"); // 2 arguments! if msg.sender == owner (false), cancel function and show message-"you are not an owner!";
        // if(msg.sender != owner) {
        //     revert("you are not an owner!"); // 1 argumet
        // }

        assert(msg.sender == owner); // 1 argument - ternarn oper, Error - Panic
        _to.transfer(address(this).balance);
    }    

}