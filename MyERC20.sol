// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

contract MyERC20 is ERC20,AccessControl{
    constructor() ERC20("MyToken", "AB" ){
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
    }
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    //We can also add who can call this mint function
    //only the addresses that has the MINTER_ROLE can call this function
    //onlyRole is a modifier from AccessControl
    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE){
        _mint(to, amount);
    }
    /*
     *   we can also add who can grant these roles to addresses.
     *   OpenZeppelin's `AccessControl` contract has a role that does this already, called the `DEFAULT_ADMIN` role.
     */
    /*
     *   Let's grant this role to the deployer in the constructor.
     *   When an address deploys a smart contract, it automatically calls the `constructor`.
     *   Therefore, the deployer is the `msg.sender` in the context of the `constructor`
     */
    /*
     *   The [Open Zeppelin Contracts Wizard](https://wizard.openzeppelin.com/) is an interactive smart contract generator based on OpenZeppelin Contracts.
     */

}
