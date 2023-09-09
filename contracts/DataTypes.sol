pragma solidity ^0.8.9;

contract DataTypes {
    // bool myBool = true; // default - false, variable save in blockchaine

    // function myFunc(bool _inputBool) public {
    //     bool localBool = false;  // local variable save in memory;
    // }

    // numbers
    // unsigned integers(input money)- without + or - (5, 7 ,8 etc);
    // uint- default 256(values bits for memory) 2 ** 256;
    // uint public myUint = 42;
    // uint8 public mySmallUint = 2; // 2 ** 8 = 256; for uint 8(0 ---> (256-1);


    // function demo(uint _inputUint) public {
    //     uint localUint = 42;
    // }
 
    // signed integers- save value ( + or - ) -5;
    // int public myInt = -42;
    // int8 public mySmallInt = -1; // + or - - 1bit; 2 ** 7 = 128; range= -128 --> (128-1);


    // uint public minimum;

    // function minNumber() public {
    //     minimum = type(uint8).min;
    // }

    // uint public maximum;

    // function max() public {
    //     maximum = type(uint8).max;
    // }


    // exit from range
    // uint8 public myVal = 254;

    // function inc() public {
    //     myVal++; 
    // } -error

     uint8 public myVal = 254;

    function inc() public {
        unchecked {
            myVal++;
        } // uncheked return to start range;
    }


}