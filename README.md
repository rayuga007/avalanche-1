## Lottery Game Smart Contract

### Overview

This is a simple Ethereum smart contract in Solidity for a lottery game. The contract allows participants to join the lottery, checks their join status, and provides a function to close the lottery when a sufficient number of participants is reached.

### Features

1. **Join Lottery:**
   - Participants can join the lottery by calling the `joinLottery` function.
   - The contract ensures that a participant cannot join multiple times.

2. **Check Join Status:**
   - Participants can check their join status by calling the `checkJoinStatus` function, which returns a message confirming their participation.

3. **Close Lottery:**
   - The `closeLottery` function is used to close the lottery.
   - It checks if the total number of participants is greater than or equal to 5 before closing.
   - If there are not enough participants, it uses the `revert` statement to abort the transaction with an error message.

### Error Handling

- **Require Statement:**
  - The `require` statement is used in the `joinLottery` function to ensure that a participant has not already joined. If the condition specified in `require` is not met, the transaction is reverted with a custom error message.

- **Assert Statement:**
  - The `assert` statement is employed in the `checkJoinStatus` function to ensure that the queried player has actually joined the lottery. If the condition specified in `assert` is false, it will trigger an exception, indicating a logical error in the contract.

- **Revert Statement:**
  - The `revert` statement is employed in situations where an error condition occurs, such as insufficient participants to close the lottery. It provides a custom error message to communicate the reason for the transaction failure.

### Usage

1. Deploy the smart contract on the Ethereum blockchain.
2. Participants can join the lottery using the `joinLottery` function.
3. They can check their join status with the `checkJoinStatus` function.
4. The lottery can be closed using the `closeLottery` function when there are at least 5 participants.

### Author
Faizan Khan

rehan786khan@gmail.com

### License

This smart contract is released under the MIT License. See the [LICENSE](LICENSE) file for details.

