# CeShCircuit Verification
A blockchain-based circuit verification.

## Description
The CeShCircuit Verification project involves creating a custom digital circuit using the Zardkat repository, compiling it with Circom to generate a verifier, and deploying the verifier onto the Polygon network(here Amoy). The project demonstrates private verification of circuit computations, providing a secure and efficient means of validating complex digital circuits on the blockchain.

## Getting Started
Installing
1. Clone the Repository:
git clone https://github.com/yourusername/zk-circuit-verification.git
2. Install Dependencies:
npm install
3. Configure Environment:
Create a .env file and add the following details:
AMOY_PRIVATE_KEY=your_private_key

## Executing program
1. Create the Circuit:
2. Compile the Circuit:
   npx hardhat circom
3.Deploy the Verifier to Polygon Amoy:
npx hardhat run scripts/deploy_verifier.js --network amoy
Verify Any Inputs:
Use a and b  as inputs to the circuit, and verify the output using the deployed verifier.

## Help
Ensure you have sufficient MATIC in your Polygon account for deploying and interacting with the contract. For additional help, run:
npx hardhat help
## Authors
Prince Sharma
## License
This project is licensed under the MIT License - see the LICENSE.md file for details.






