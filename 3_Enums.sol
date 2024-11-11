//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enums {
    enum Status {
        PENDING,
        SHIPPED,
        ACCEPTED,
        REJECTED
    }
    Status public status;

    function getStatus() public view returns (Status) {
        return status;
    }

    function setStatus(Status _status) public {
        status = _status;
    }

    function rej() public {
        status = Status.REJECTED;
    }

    function reset() public {
        delete status;
    }
}
