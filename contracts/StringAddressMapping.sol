pragma solidity ^0.8.9;

contract Demo {
    // string public myStr = "test"; // storage in blockchaine;

    // function demo() public {
    //     string memory myTemStr = "temp"; // without memory in blockchaine;
    //     myStr = "new value"; // storage in blockchaine;
    // }

    //  function demoMemory(string memory newValueStr) public {
    //     string memory myTemStr = "temp"; // without memory in blockchaine;
    //     myStr = newValueStr; // storage in blockchaine;
    // }

    address public myAddr = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    // function getBalance() public view returns(uint) {
    //     return myAddr.balance;
    // }
    //     function getBalance(address targetAddr) public view returns(uint) {
    //         return targetAddr.balance; // get balance from specific payer
    // }

    // transaction

    // function receiveFunds() public payable {
    // };

    // function transferTo(address targetAddr, uint amount) public {
    //     address payable _to = payable(targetAddr);
    //     _to.transfer(amount);
    // }


    // mapping [key, value] (number, bool, string, adddress), mapping dont have lenght

    mapping (address => uint) public payments; // default value uint = 0; this is storage blockchaine;

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;

    }

}
