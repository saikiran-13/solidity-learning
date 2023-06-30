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

contract Mapping{
    mapping(address=>uint) map;
    function get(address _add) public view returns(uint){
        return map[_add];
    }
    function set(address _add,uint _num) public{
        map[_add] = _num;
    }

    function remove(address _add) public {
        delete map[_add];
    }
}

contract Nestedmapping{
    mapping(address =>mapping(uint=>bool)) public nestedmap;

    function get(address _add,uint _num) public view returns(bool){
        return nestedmap[_add][_num];
    }

    function set(address _add,uint _num) public{
        bool value;
        if(_num%2==0){
            value = true;
        }
        else{
            value  = false;
        }
        nestedmap[_add][_num] = value;
    }

    function remove(address _add,uint _num) public {
        delete nestedmap[_add][_num];
    }
    
}

//creating a library and using it other contracts
library calculator{
    function add(uint8 a,uint8 b) public pure returns(uint){
        return a+b;
    }

     function sub(uint8 a,uint8 b) public pure returns(uint){
        return a-b;
    }

     function mul(uint8 a,uint8 b) public pure returns(uint){
        return a*b;
    }

     function div(uint8 a,uint8 b) public pure returns(uint){
        return a/b;
    }
}

contract calc{

    error noteven(string message);
    function findsum(uint8 x,uint8 y) public pure returns(uint){
        return calculator.add(x,y);
    }

    function Require(uint8 num) public pure{
        require(num%2==0,"Not even");
    }

    function Assert(uint8 num) public pure{
        assert(num%2==0);
    }

    function Revert(uint8 num) public pure{
        if(num%2!=0){
            revert("Not even number");
        }
    }

    function Customerror(uint8 num) public pure{
        if(num%2!=0){
            revert noteven("Custom error called");
        }
    }
}
