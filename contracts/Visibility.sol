// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

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
    string public name = "sdfafsa";
    function getname() public view returns(string memory){
        return name;
    }
    string public extcall = External2();
    function External2() public pure virtual override returns(string memory){
        return "External3";
 
    }//if you comment out the function extrenal2 here it will give compile error but deploys successfully
    //To avoid compiler error u can use this.External2() but it will not deployed 
    function tempExternal() external virtual returns (string memory){
        return "InheritedExt";
    }
    string public callexternal = External2();
    string public callinternal = Internal();
    string public callpublic = Public();
    
  
    // string public callprivate = Private(); //U can't access private fun from here can be accessed within visibilites contract
}

contract temp2 is temp{
    //creating an object of contract temp and calling the external type function in temp (No error)
    temp obj = new temp();
    string public temp2ext = obj.tempExternal();
    function tempExternal() public virtual override returns(string memory){
        return "Override successful";
    }
    

}

contract tempo {
    function tempExternal() public virtual returns(string memory){
        return "Override successful in tempo";

    }
}

contract temp3 is temp2,tempo{//checks from left to right based on parameters in override
    function tempExternal() public  override(temp2,tempo)returns(string memory){
        return super.tempExternal();
    }
}

contract temp4 is temp{
    constructor(){
        name = "qwerty"; //shadowing effect
    }
}

