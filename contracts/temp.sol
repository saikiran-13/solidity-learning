// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18 <0.9.0;
contract Bank{
address public owner;
mapping(address=>uint) public balances;


constructor(){
    owner = msg.sender;
}

function contractBalance() public view returns(uint){
    require(msg.sender==owner,"Only owner can check the balance");
    return address(this).balance;
}


function transferEther(address payable _from,address payable _to) public payable{
    if(balances[_from]<msg.value){
        balances[_from]=0;
    }
    else{
    balances[_from]-=msg.value;
    }

    balances[_to]+=msg.value;
    payable(_to).transfer(msg.value);
}


}