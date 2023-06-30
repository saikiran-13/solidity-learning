// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18 <0.9.0;


interface NewMint{
     function mintNft(address reciever) external;
}


contract mintFunc{

    function mintOperation(address _contractaddress,address _receiver) public {
        NewMint(_contractaddress).mintNft(_receiver);
    }
}