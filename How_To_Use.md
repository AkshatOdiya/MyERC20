IDE: RemixIDE
# Deploying, Interacting and Miniting token

## Deploy your smart contract

   * Head to the **Deploy and run transactions** tab in the left-hand sidebar.

   * We want to deploy our contract with MetaMask. To connect your wallet to Remix, click **Select Environment** dropdown menu and select **Injected Provider - MetaMask**.

   * This will open MetaMask and ask to connect to Remix. Click **Connect**.
![image](https://github.com/user-attachments/assets/e653886b-3b88-418a-8ed9-665d37240464)   
   * In the Contract dropdown, select `MYERC20.sol`.
![image](https://github.com/user-attachments/assets/ef199bad-f306-4e1e-9a10-a05ea9086949)    
   * Click **Deploy**. 
   * Sign the transaction in Metamask to deploy your smart contract!

You will know if your contract has been successfully deployed if:

* The Remix terminal window (the block at the bottom of your screen) shows a green tick next to the transaction information:
![image](https://github.com/user-attachments/assets/acb83e9f-2934-41df-ba99-fa88fd4e92ac)  
* Your MetaMask shows a successful contract deployment transaction:
![image](https://github.com/user-attachments/assets/4fc04a07-badb-4564-8e15-7027f903b2bc)  
* And your contract is in the **Deployed contracts** section on Remix:
![image](https://github.com/user-attachments/assets/5930c874-cb2f-495d-9179-4715b7d91fa6)  
**Note** Double check you have pinned the contract so you can use it again later. It may also be worth copying the address and keeping a note of it somewhere.
![image](https://github.com/user-attachments/assets/61cbc976-4898-4d0b-bda4-1108d4f5dd42)  
## Check Total Token Supply and Balances

1. Once your contract is deployed, you can view it in the **Deployed Contracts** section. Here, you will find all the functions available within the contract, allowing you to interact with them directly.

2. You can pin your contract by clicking on the pin icon. This will save your contracts if you want to close Remix and continue another time. Note that pinning is workspace-specific, so make sure you open the same Remix workspace when you need to access this token contract.
![image](https://github.com/user-attachments/assets/7181ee5c-5d44-46aa-a490-42db514d4ce4)  
1. To check the total supply of your token, call the `totalSupply` function.
   If you want to view the balance of a specific wallet, use the `balanceOf` function and pass the wallet address as a parameter. Currently, your token will not have any tokens minted, so the return value will be `0` for both function calls.
![image](https://github.com/user-attachments/assets/7aa0d5d5-3428-419f-9a7a-ddc7aa49d42d)  
## Adding Your Token to MetaMask

If you deployed your contract on a testnet, you can add your token to MetaMask by following these steps:

1. Copy the token contract address. In Remix, you can find this address in the **Deployed Contracts** section.
![image](https://github.com/user-attachments/assets/0f700c5e-cb47-408e-aaec-a3307b1f8dc0)  
1. Open your MetaMask wallet and click on the **Tokens Tab**. Hit the three vertical dots icon on the right hand side and click **Import tokens**.

![image](https://github.com/user-attachments/assets/93cf94c8-0660-4666-be46-120e3a08626d)  
1. Enter the token contract address. MetaMask will automatically detect your token and its related information since it follows the ERC-20 standard.

2. Check if the information is correct (Address, Token Symbol, and Decimals).
![image](https://github.com/user-attachments/assets/1ef62079-cd15-454e-8cc5-bca5d29711e8)  
1. Click **Next** to confirm the information. Click **Import** to import your token to MetaMask. This allows you to view your balance and send tokens to others using the MetaMask UI.

---
# Interacting and Minting Tokens
We have not yet minted any tokens, which means currently the total available supply of our token is `0` - no tokens currently exist! To increase the supply of tokens, we have to call the function `mint` from our contract:

* Go to the **Deploy & Run Transactions** tab.

* Find your token and expand the tab to see the contract's functions.
![image](https://github.com/user-attachments/assets/60254b74-2b17-4f11-97aa-b35ca7fb6954)
* Find the function `mint` and expand it to check the parameters.

  * `to`: The address receiving the minted tokens. We will create `100` tokens by setting the amount value as `100000000000000000000`. This is because our Token has `18` decimals.

  * `amount`: The amount to mint.
  ![image](https://github.com/user-attachments/assets/4a70786f-c7f2-4f5f-a7a1-61be76feff77)
* To send the transaction, click on the **transact** button and confirm the transaction in your Metamask wallet.

* Now, you can check to see if your balance has increased by calling `balanceOf` and passing the address you minted the tokens to.

* You can also check your balance in MetaMask by heading to the **Tokens** tab since we added our token previously.
## Allowance and Token Approvals

Token approvals enable another address to spend another address's tokens. This feature is commonly used in DeFi applications that need to transfer ERC20 tokens from your wallet to another wallet or contract via another intermediary smart contract.

To use this feature, you can call the `approve` function, specifying the address that will spend your tokens and the amount they are allowed to spend.  
![image](https://github.com/user-attachments/assets/0c2cb07a-2852-488a-9d4f-ec78111b3137)  
You can always verify if a contract has permission to spend your tokens by calling the `allowance` function.

![image](https://github.com/user-attachments/assets/98349db6-0363-40b4-b6d0-559551a3449c)












