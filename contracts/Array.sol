// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract Array{
    // uint256 public game;
    // uint public count1;
    // uint[4] public arr = [1,2,3,4];//Fixed size array
    // uint[] public dynamicarr;
    uint[3] private temparr = [8,9,10];
    uint[3] public array;
    //Bytes array gives output in the hexadecimal digits
    bytes3 public b3 = 'abc';
    // bytes2 public b2 = 'abc'; //this will give an error as size is of 2 bytes given value is more(overflow)
    bytes4 public b4 = 'abc';
  
    // constructor(){
    //     game = 100;
    //     count1 = 0;
    // }
    // function getter() public view returns(uint[4] memory,uint[] memory){
    //     return (arr,dynamicarr);
    // }

    // function getindexvalue(uint index) public view returns(uint){
    //     return arr[index];
    // }

    // function setter(uint index,uint value) public returns(uint[4] memory,uint){
    //     arr[index] = value;
    //     return (arr,arr.length);
    // }
    
    // function darrayaddelements(uint value) public payable returns(uint){
    //     dynamicarr.push(value);
    //     return value;
        
    // }

    // function removeelements() public payable returns(uint){
    //     dynamicarr.pop();
    //     return dynamicarr[dynamicarr.length-1];

    // }
    function loops() public returns(uint[3] memory){
        // uint count = 0
        // while(count<length){//here length should not be greater than 3 bcz I have fixed the size of the this array
        //     dynamicarr[count] = count;
        //     count++;
        // }

        for(uint i=0;i<temparr.length;i++){
            temparr[i] = i;
        }

        array = temparr;
        return array;
        
    }
    // function getIndexLength(uint index) public view returns(bytes1,uint){

    //     return (bytearr[index],bytearr.length);
    // }
    // function pushElement(bytes1 memory e) public {
    //     bytes memory  bytearr = 'abcd';
    //     bytearr.push(e);
    // }
//     function popElement() public{
//         bytearr.pop();
//     }
// }
}