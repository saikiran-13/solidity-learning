// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract balance{

    address payable owner;
    mapping(address => uint) public balances;

    constructor(){
        owner = payable(msg.sender);
    }

    function checkBalance() public view returns(uint){
        require(msg.sender==owner,"Only owner can check the balance");
        return address(this).balance;
    }


    function sendbysend(address payable _to) public payable{
        bool status = _to.send(msg.value);
        require(status,"Transcation unsuccessfull");
    }

    function sendbytransfer(address payable _to,uint _amount) public payable{
        // balances[msg.sender]-= msg.value;
        _to.transfer(_amount);

    }

    function sendbycall(address payable _to) public payable{
        (bool result,) = _to.call{value:msg.value}("");
        require(result,"Unsuccessful transcation");
    }

    // function Transferfrom(address payable _to,address payable _from,uint _amount) public payable{
    //   balances[_from]-=_amount;
    //   _to.transfer(_amount);
    //   getPersonBalance(_from,_to);
    // }

    // function getPersonBalance(address sender,address receiver) public view returns(uint,uint){
    //     return (balances[sender],balances[receiver]);
    // }

    event CheckGas(string message,uint256 data);
    receive() external payable {
        emit CheckGas("Receive called",gasleft());
    }
    fallback() external payable {
        emit CheckGas("Fallback called",gasleft());
    }

}
