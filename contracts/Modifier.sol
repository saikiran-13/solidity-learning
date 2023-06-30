// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract modify{
    address public owner;
    bool public flag;
    uint public money;

    constructor(){
        owner = msg.sender;
    }

    modifier checkOwner(){
        require(msg.sender != owner,"Not the owner");
        _;
    }

    modifier validateaddress(address _add){
        require(_add != address(0),"Address invalid");
        _;
    }

    function changeowner(address _newadd) public checkOwner() validateaddress(_newadd){
        owner = _newadd;
    }

    modifier validatewithdraw(){
        require(!flag,"Something went wrong");
        flag = true;
        _;
        flag = false;
    }

    function withdraw(uint _money) public validatewithdraw() returns(string memory){
        money = _money;
        return "Money withdraw successfull";
    }
}

contract Name{
    string public name;
    constructor(string memory _name){
        name = _name;

    }
}

contract Age{
    uint public age;
    constructor(uint _age){
        age = _age;
    }
}

contract details is Name,Age{
    constructor(string memory _name,uint _age) Name(_name) Age(_age){
    
    }
}