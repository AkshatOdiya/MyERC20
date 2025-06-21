# MyERC20 Token

A simple **ERC20 token** contract built with **OpenZeppelin** that includes **role-based minting access control**.

---

## Features

* ERC20-compliant token
* Minting restricted to addresses with the `MINTER_ROLE`
* Role-based access control using OpenZeppelin's `AccessControl`
* Deployer (you) is the **admin** and **minter** by default

---

## 🔗 Contract Details

| Parameter        | Value        |
| ---------------- | ------------ |
| **Token Name**   | MyToken      |
| **Token Symbol** | AB           |
| **Decimals**     | 18 (default) |

---

## Functions

### `mint(address to, uint256 amount)`

* **Purpose**: Mints new tokens to the specified address.
* **Access Control**: Only addresses with the `MINTER_ROLE` can call this function.

```solidity
function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
    _mint(to, amount);
}
```

---

## Roles & Permissions

* **DEFAULT\_ADMIN\_ROLE**: Can grant/revoke any role (including `MINTER_ROLE`).
* **MINTER\_ROLE**: Can mint new tokens.

Deployer (`msg.sender`) receives **both roles** in the constructor:

```solidity
_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
_grantRole(MINTER_ROLE, msg.sender);
```
---

## Granting Roles Example

To grant `MINTER_ROLE` to another address:

```solidity
grantRole(MINTER_ROLE, 0xFriendAddress);
```

To check if an address has the role:

```solidity
hasRole(MINTER_ROLE, 0xFriendAddress);
```

---

## References

* [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/5.x/)
* [OpenZeppelin AccessControl](https://docs.openzeppelin.com/contracts/5.x/access-control)
* [OpenZeppelin Contracts Wizard](https://wizard.openzeppelin.com/)

---

## Security Notes

* Only trusted addresses should receive `MINTER_ROLE`.
* The deployer holds `DEFAULT_ADMIN_ROLE`, allowing full control over roles.

---

## 📝 License

**MIT License**
