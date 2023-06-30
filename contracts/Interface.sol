// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// import "contracts/Interfaces.sol";

contract Counter {
    uint256 public count;

    function incrementcount() external returns (uint256) {
        count += 1;
        return count;
    }

    function decrementcount() external returns (uint256) {
        count -= 1;
        return count;
    }
}

interface IDcounter {
    function count() external view returns (uint256);

    function incrementcount() external;

    function decrementcount() external;
}

contract Target {

    address public counteraddress;

    constructor(address _counter) {
        counteraddress = _counter;
    }

    function getcounter() external view returns (uint){
        uint temp = IDcounter(counteraddress).count();
        return temp;
    }

    function incrementcounter() external {
        IDcounter(counteraddress).incrementcount();
    }

    function decrementcounter() external {
        IDcounter(counteraddress).decrementcount();
    }
}



// pragma solidity >=0.5.0 <0.9.0;

// interface ICounter {
//     function getCount() external view returns (uint);
//     function incrementCount() external;
//     function decrementCount() external;
// }

// contract Counter{
//     uint count;

//     function getCount() external view  returns (uint) {
//         return count;
//     }

//     function incrementCount() external  {
//         count += 1;
//     }

//     function decrementCount() external {
//         count -= 1;
//     }
// }

// contract CounterUser{
//     public address counteradd;
//     constructor(_counter){
//         counteradd = _counter
//     }
//     function useCounter(ICounter counter) external {
//         uint count = counter.getCount(); 
//         Icounter(counteradd).incrementCount();
//         counter.decrementCount();
//     }
//     function getter() public view returns(uint count){
//             return count;
//     }
// }
