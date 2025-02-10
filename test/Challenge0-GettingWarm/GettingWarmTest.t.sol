// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

//////////////////////////////////////////////////////////////////////
// ==>  DON'T CHANGE ANYTHING BUT SPECIFIED FUNCTION DOWN BELOW <== //
//////////////////////////////////////////////////////////////////////

import {Test, Vm} from "@forge-std/Test.sol"; // @note side-quest - go research remappings for the .toml file
import {GettingWarmDev} from "../../src/Challenge0-GettingWarm/GettingWarmDev.sol";

contract GettingWarmTest is Test {
    GettingWarmDev challengeContract;
    string newMessage;
    string originalMessage;

    // => DO NOT TOUCH <= //
    function setUp() external {
        challengeContract = new GettingWarmDev();
        newMessage = challengeContract.getMessage();
    }

    // => Write your solution here: <= //
    function testSolution() external solutionSetUP isSolved{
        // Your solution //
        
        //---------------//
        challengeContract.setMessage(newMessage);
    }

    modifier solutionSetUP {
        originalMessage = challengeContract.getMessage();
        _;
    }

    // => DO NOT TOUCH <= //
    modifier isSolved { 
        _;
        assertEq(newMessage, challengeContract.getMessage());
        assertFalse(keccak256(bytes(originalMessage)) == keccak256(bytes(newMessage)), "Message did not change");
    }
}