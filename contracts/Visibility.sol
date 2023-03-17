// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

//Deploying gives only public and external function as remix ide is considered as outside
contract visibilities{

    //This function can be called from anywhere inside,outside,within or other contracts
    function Public() public pure returns (string memory){
        return "public";
    }

   //This function can be called within this visibilities contract
    function Private() private pure returns(string memory){
        return "private";
    }
    
    //This function can be called from this contract and the inherited one(temp)
    function Internal() internal pure returns (string memory){
        return "Internal";
    }

    function External2() external pure virtual returns(string memory){
         return "External";
    }

}

//Inheritance
contract temp is visibilities{

    function External2() public pure virtual override returns(string memory){
        return "External3";
 
    }
  
    string public callexternal = External2();
    string public callinternal = Internal();
    string public callpublic = Public();
    
  
    // string public callprivate = Private(); //U can't access private fun from here can be accessed within visibilites contract
}

contract temp2 is temp{

    string public callingext2 = External2();

}
