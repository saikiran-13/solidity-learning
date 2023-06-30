// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;
contract nothing{
     bool public status = true;
     uint public taskdone;
     address public trainee;

     event workdone(uint _taskdone,address _trainee,bool _status);
     function work(address _to) public {
        status = status? false:true;
        taskdone+=1;
        emit workdone(taskdone,_to,status);
     }


}
