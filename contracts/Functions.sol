// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract functions{
    uint public data;
    bool public flag;
    string public name;
    function datatypes() public returns(uint,bool,string memory){
        data = 156;
        flag = true;
        name = "abc";
        return (data,flag,name);
    }

    function getinfo() public returns (uint,bool,string memory,uint,uint){
        (uint data1,bool flag1,string memory name1)=datatypes();
        (uint _x,,uint _y)=(22,33,44);//Destructuring
        return (data1,flag1,name1,_x,_y);

    }

    event temporarydata(address indexed _add,uint _id,string data);
    event end(address _addr);

    function temp() public {
        emit temporarydata(address(0),12,"dfgsfg");
        emit temporarydata(address(1),13,"dfdsfgsfg");
        emit end(msg.sender);

    }
}