pragma solidity ^0.8.9;

contract MyShop {
    address public owner;
    mapping (address => uint) public  payments;

    constructor() {
        owner = msg.sender;
    }

    function payForItem() public  payable {
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable _to = payable(owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }
}