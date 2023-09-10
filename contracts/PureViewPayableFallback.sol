pragma solidity ^0.8.9;

contract Demo {

    // area of visibility 
    
    // public
    // external - from outside the contract
    // internal - from inside the contract
    // private 

    // view - read data in blockchaine, and client doesn't pay(call)
    // pure - call, but unpossible read utside data

    function getBalance() public view returns(uint) {
        uint balance = address(this).balance;
        return balance;
    }

    // or

    function getBalances() public view returns(uint balances) {
        balances = address(this).balance;
    }

    // pure

    // unpossible function, because string outside- not pure
    string message = "hello";

    // function getMessage() external pure returns(string memory){
    //     return message;
    // }

    function rate(uint amount) public pure returns(uint) {
        return amount * 3;
    }

    function setMessage(string memory newMessage) external {
        message = newMessage;
    }

    // payable - function get money

    uint public balance;
    function pay() external payable {
        balance += msg.value;
    }

    //fallback - function. Calling contract with unname function
    //recive - function. 

    fallback() external payable {
        
    } 

    receive() external payable {
        balance += msg.value;

    }


}