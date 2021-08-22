1 problem/
> Something went wrong while attempting to connect to the network. Check your network configuration.

Could not connect to your Ethereum client with the following parameters:
    - host       > 127.0.0.1
    - port       > 7545
    - network_id > 5777
Please check that your Ethereum client:
    - is running
    - is accepting RPC connections (i.e., "--rpc" option is used in geth)
    - is accessible over the network
    - is properly configured in your Truffle configuration file (truffle-config.js)
    
1 problem/solution/

Ah, you need to nest the development field in your config within a networks object.

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: '127.0.0.1',
      port: 23889,
      network_id: '*', // eslint-disable-line camelcase
      from: '0x7926223070547d2d15b2ef5e7383e541c338ffe9',
      gasPrice: '0x64', 
    }
  }
};


this part: "development" in truffle-config.js
______________________
2 problem/
$ truffle console
Error: The network id specified in the truffle config (999) does not match the one returned by the network (1629561372404).  Ensure that both the network and the provider are properly configured.
    at Object.detectAndSetNetworkId (/usr/local/lib/node_modules/truffle/build/webpack:/packages/environment/environment.js:110:1)
    at process._tickCallback (internal/process/next_tick.js:68:7)

2 problem/solution/
if config file we have 
"  networks: {
    development: {"

so we need 
$ truffle development

this part: "development" in terminal command
______________________
3 problem/
truffle(develop)> compile

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.

3 problem/solution/
.sol file with smart-contract must be in "contracts" folder
______________________
4 problem/

4 problem/solution/

3 problem/solution/
