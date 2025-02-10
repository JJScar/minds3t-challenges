// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract GettingWarm {
    // => Events <= //
    event MessageUpdated(string indexed newMesasge);

    // => State Variables <= //
    string private s_message; // @note side-quest: go research why there is the `s_` before the `message`

    constructor() {
        s_message = "no corpos allowed";
    }

    function setMessage(string memory _newMessage) external { // @note side-quest: go research why there is the `memory` keyword there
        // TODO: add the logic to set a new message.
        s_message = _newMessage;
        emit MessageUpdated(s_message);
    }

    function getMessage() external view returns(string memory){ // @note side-quest: go research why there is the `view` keyword
        return s_message;
    }
}