// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
contract counter{
    // int8 value = 128; error as more than 127bits
    uint public count;
    uint public money;
    string public name;
    
    constructor(){
        count = 156;
        money = 1000;
        name = 'saikiran';
    }


    function incrementcount() public returns(uint){
        count++;
        return count;
    }

    function decrementcount() public  returns(uint){
        count--;
        return count;
    }

    function displayamount() public payable returns(uint){
        return money;

    }
}
