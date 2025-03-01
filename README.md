# TrustOracle
🔐 AI-Powered Trust Score & Reputation System on Blockchain

# Overview
TrustOracle is a decentralized AI-driven trust and reputation scoring system. It assigns trust scores to individuals, businesses, or smart contracts based on verified interactions and AI analysis. The system helps users make informed decisions before engaging with entities in decentralized environments.

# Key Features
✅ AI-Generated Trust Scores – AI evaluates past interactions and behaviors to assign scores.
✅ Immutable Reputation System – Built on blockchain, ensuring transparency and preventing manipulation.
✅ Decentralized Identity Trust – Users can verify their trust levels before making transactions.
✅ Smart Contract Trust Ratings – Assigns reliability scores to smart contracts to prevent fraud.
✅ Admin-Free & Automated – The AI updates trust scores based on on-chain activity.
✅ Anonymous Yet Accountable – Users maintain privacy while their reputation is verifiable.

# Deployed Contract
Network: Edu Chain
Contract Address: 0xA1B2C3D4E5F60789abcdef123456789012345678

# TrustOracle's smart contract supports:
Assigning Trust Scores: AI dynamically assigns scores based on past transactions.
Verifying Trustworthiness: Users can check an entity's trust score before interacting.
AI-Driven Score Adjustments: Scores update based on real-time data from verified sources.

# Preventing Fake Ratings: Only validated transactions contribute to trust scores.
How It Works
Register Entity – A user, business, or smart contract registers on TrustOracle.
Analyze Trustworthiness – AI assesses transaction history, interactions, and reviews.
Generate Trust Score – The score is stored on-chain and updated dynamically.
Verify Before Interacting – Users can query trust scores before engaging in contracts or trades.

## 🚀 Steps to Deploy & Run the Smart Contract

### 1️⃣ Set Up Development Environment
Ensure you have the required tools installed:
```bash
npm install -g truffle
npm install -g ganache-cli
```

### 2️⃣ Initialize a New Truffle Project
```bash
mkdir TrustOracle
cd TrustOracle
truffle init
```

### 3️⃣ Install Solidity Compiler & Dependencies
```bash
npm install @openzeppelin/contracts
```

### 4️⃣ Place the Smart Contract File
- Save the **TrustOracle.sol** file inside `contracts/` directory.

### 5️⃣ Compile the Smart Contract
```bash
truffle compile
```

### 6️⃣ Deploy to Local Blockchain (Ganache)
- Start **Ganache**:
```bash
ganache-cli --deterministic
```
- Deploy using Truffle:
```bash
truffle migrate --network development
```

### 7️⃣ Interact with the Contract
- Open Truffle Console:
```bash
truffle console
```
- Register a new user:
```javascript
let instance = await TrustOracle.deployed();
instance.registerUser({from: accounts[0]});
```
- Get Trust Score:
```javascript
instance.getTrustScore(accounts[0]);
```
- Update Trust Score (Owner Only):
```javascript
instance.updateTrustScore(accounts[0], 80, {from: accounts[0]});

```
# License
TrustOracle is open-source and licensed under the MIT License.

