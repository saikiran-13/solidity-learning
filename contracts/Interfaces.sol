// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

// interface IDcounter{
//     function getcount(address _counter) external view returns(uint);
//     function incrementcount() external;
//     function decrementcount() external;
// }

contract transcation{
    address payable public owner;
    constructor (){
        owner = payable(msg.sender);
    }

    function checkBalance() public view returns(uint,address){
        require(msg.sender == owner,"Only owner can see the balance");
        return (address(this).balance,address(this));
    }

    function sendEther(address payable _to) public payable {
        // (bool success,) = owner.transfer{value:amount}("");
        // require(success,"Failed to send Ether");
        _to.transfer(msg.value);
    }

    function receiveEther(address payable _person,uint _amount) public{
        // (bool success,) = _person.transfer{value:_amount}("");
        // require(success,"Failed to receive Ether");

    }
}