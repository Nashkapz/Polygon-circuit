#  Ethereum to Polygon NFT Bridge 


This repository demonstrates how to bridge NFTs from Ethereum (ETH) to Polygon (Matic). You can bridge your contract to Polygon for lower gas fees and faster transaction times. Polygon is the most proven way to build and scale your decentralized application and projects on Ethereum



## How to Use 

1.  Run `npm install` 

2.  Deploy MetaToken to Goerli `npx hardhat run scripts/deploy.js --network goerli` 

3.  Batch Mint NFTs `npx hardhat run scripts/mint.js --network goerli` 

4.  Map the assets to Mumbai Network `npx hardhat run scripts/approveDeposit.js --network goerli` 

5.  Wait for approximately 20 to 30 minutes for the tokens to appear on your Polygon account after depositing them. 

6.  Get the number of NFTs from mumbai contract `npx hardhat run scripts/getBalance.js --network mumbai`

If you see the following output  then your assets were sucessfuly transefered to polygon via the Polygon Bridge. 
```bash
Your Wallet Address now has: 5 NFT
```
[Loom walkthrough](https://www.loom.com/share/13c6a07901054d7c8fc09f282aed3b6d?sid=d6e43f54-29ab-47da-a30e-9174eb07a07f)
---

## Acknowledgment
This project was completed as part of the assessment for the Polygon course offered by [MetaCrafters](https://www.metacrafters.io/). I would like to express my gratitude to MetaCrafters for providing the valuable learning resources and guidance throughout the course.


---

## Author
Sourav Kapoor
