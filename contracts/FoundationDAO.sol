//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FoundationDAO {
    
    // DAO staking is via the myda token, so we need a ref
    ERC20 public mydaToken;
    
    /**
     * The main struct for a DataCoalition (DC) application
     * uri: the uri of the application form
     * status: to store the result of the DAO vote on this application
     * ... 1 = new, 2 = rejected, 3 = approved
     * feeInMyda: fee the caller has paid (will be held in escrow until vote is done)
     */
    struct DataCoalitionApplication {
        string uri;
        uint8 status;
        uint256 feeInMyda;
    }

    constructor(ERC20 _mydaToken) {
        mydaToken = _mydaToken;
    }
}