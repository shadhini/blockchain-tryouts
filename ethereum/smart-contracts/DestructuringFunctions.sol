// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// understanding destructuring functions in solidity
contract DestructuringFunctions {

    uint public changeValue;
    string public tom = 'Hello!';

    function f1() public pure returns (uint) {
        return 3;
    }

    function f3() public pure returns (uint, bool, string memory) {
        return (3, true, 'Goodbye!');
    }

    function g() public {
        (changeValue,,) = f3();
    }

    function h() public {
        (changeValue,,tom) = f3();
    }
}
