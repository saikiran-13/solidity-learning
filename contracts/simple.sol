// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
contract counter{
    // int8 value = 128; error as more than 127bits
    uint public count;
    uint public money;
    string public name;
    event countUpdated(string,uint);
    event transferCalled(address,uint);
    constructor(){
        count = 156;
        money = 1000;
        name = 'saikiran';
    }
    function contractBalance() public view returns(uint){
        return address(this).balance;
    }

    function deposit() public payable{
       
    }
    function transfer(address payable _to) public payable {
        _to.transfer(msg.value);
        emit transferCalled(_to,msg.value);

    }
    function setcount(uint _count) public{
        count = _count;
        emit countUpdated("Count updated to ",_count);
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
