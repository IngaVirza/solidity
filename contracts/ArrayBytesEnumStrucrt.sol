pragma solidity ^0.8.9;

contract Demo {
    Enum
    enum Status { Paid, Delivered, Received }
    Status public currentStatus;

    function pay() public {
        currentStatus = Status.Paid;
    }

    function delivered() public {
        currentStatus = Status.Delivered;
    }

    Array

    array with fix length
    uint[10] public items; //arry lenght - 10 values; array dont have diffrent types in array. Only uint or another types
    uint[3][2] public items; //outside arry - 2 length, inside- 3 length;
    string[5] public strings;

    function arrayDemo() public {
        items[0] = 100;
        items[1] = 200;
        items[4] = 400;
        items = [
            [3,4,5],
            [6,7,8]
        ];
    }

    array with dynamic array

    uint[] public items;
    function dinamicArray() public {
        items.push(4);
        items.push(5);
    }

    function sampleMemory() public view returns(uint[] memory) {
        uint[] memory tempArray = new uint[](10);
        tempArray[0] = 1; 
        return tempArray;
    }

    Byte

    bytes32 public myVar = "test"; //1byte = 8bit; 
    (1--> 32Bytes), 32*8 = 256;
    uint256;

    dinamic var bytes

    bytes public myDynVar = "test here";

    function arrayLenght() public view returns(uint){
        return myDynVar.length;
    }

    Struct

    struct Payment {
        uint amount;
        uint timestamp;
        address from; // struct without memory
        string message;
    }

    struct Balance {
        uint totalPayments;
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balances;

    function getPayment(address _addr, uint _index) public view returns(Payment memory){
        return balances[_addr].payments[_index];
    }

    function pay(string memory message) public payable {
        uint paymentNum = balances[msg.sender].totalPayments;
        balances[msg.sender].totalPayments++;


        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );
        balances[msg.sender].payments[paymentNum] = newPayment;
    } 


}