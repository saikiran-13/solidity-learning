// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

struct Student{
    string name;
    uint id;
    bool feepaid;

}

contract Studentdetails{
    Student public s1;
    constructor(string memory _name,uint _id,bool _value){
        s1.name = _name;
        s1.id = _id;
        s1.feepaid = _value;
    }

    function changedetails(string memory _name,uint _id,bool _value) public{
        Student memory newstudent = Student({
            name:_name,
            id:_id,
            feepaid:_value

        });
        s1 = newstudent;
    }
}


