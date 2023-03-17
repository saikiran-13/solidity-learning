// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// contract Transcation {
//     bool public status = true;
//     enum state{pending,success,failure}
//     state public s1;
//     function setstate(state _tempstate) public{
//         s1 = _tempstate;
//     }

//     function changestatus() public{
//         if(status==true){
//             s1 = state.success;
//             status = false;
//         }
//         else{
//             s1 = state.failure;
//             status = true;
//         }

//     }
// }

// Transcation mytranscation = new Transcation();

// pragma solidity >=0.8.0 <0.9.0;

// contract MyContract {
//     enum State {
//         Created,
//         InProgress,
//         Completed
//     }

//     State public state;

//     function setState(State _state) public {
//         state = _state;
//     }

   
// }

//  function createcontract() {
//     MyContract myContract = new MyContract();

//     myContract.setState(MyContract.State.Created);
//     myContract.setState(MyContract.State.InProgress);
//     myContract.setState(MyContract.State.Completed);
// }


contract studentids{//Mapping
    // mapping(uint => string) public studentdata;
    string[] public arr = ['abc','xyz','simform'];

    // function setdata(uint id,string memory name) public{
    //     studentdata[id] = name;

    // }

    function changeDataByMemory() public view returns(string memory){//Here changes occurs only in s1
        string[] memory s1 = arr;
        s1[0]='first';
        return s1[0];
    }

    function changeDataByStorage() public {
        string[] storage s1 = arr;
        s1[0] = 'one';
    }
//Global variables
    function displayblockdetails() public view returns(uint,uint,uint,uint,address payable,address,uint,address){
        return(block.number,block.timestamp,block.prevrandao,block.chainid,block.coinbase,msg.sender,tx.gasprice,tx.origin);
    }


}