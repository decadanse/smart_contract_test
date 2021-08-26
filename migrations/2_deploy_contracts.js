const MultiSigWallet = artifacts.require("MultiSigWallet");

// module.exports = function (deployer) {
//   deployer.deploy(MultiSigWallet, ["0x63DbD87E8a63eDCb77520Afd7E3118A52De051e6","0x3BBC32546271F5BCef03241271EEEBE6DCD7dA15"], 2);
// };


// TODO testnet accounts
module.exports = function(deployer, network, accounts) {
  if (network === "main") {
    return
  }

  console.log("-----------------------------")
  console.log(accounts)
  console.log("-----------------------------")

  const owners = accounts.slice(0, 3)
  const numConfirmationsRequired = 2

  return deployer.deploy(MultiSigWallet, owners, numConfirmationsRequired)
}