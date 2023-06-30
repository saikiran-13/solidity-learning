// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
contract Lottery{
    address public manager;//manager address 
    //contract address needs to payable and array format bcz participants have to send coins this address to buy lottery  
    address payable[] public participants;

    constructor(){
        //Manger have the full authority he decides the final winner
        //The address from which this smart contract is deployed taken as msg.sender
        manager = msg.sender;
    }

    //receive is an predefined and can be used only once in the contract
    //It must be used with the external visibility and payable
    //when you receive the ether from participant,u have to register him in contest

    receive() payable external{
        require(msg.value==1 ether);
        //if the money by partipicant should be 1 ether otherwise the remaining statements are not allowed
        participants.push(payable(msg.sender));
        
    }

    function showBalance() public view returns(uint){
        //only manager have authority to see the contract balanace
        require(msg.sender==manager);
        return address(this).balance;
    }

    
}