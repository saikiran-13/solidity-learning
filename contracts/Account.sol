// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract Account{
    address payable destination = payable(0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC);
    function account() payable public{

    }
    function getbalance() public view returns(uint,address){
        return (address(this).balance,address(this));
    }

    function sendmoney(uint _no) public {
        destination.transfer(_no);
    }

}
