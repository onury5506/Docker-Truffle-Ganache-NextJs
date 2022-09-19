const TestToken = artifacts.require("TestToken");
const fs = require("fs/promises")

module.exports = function (deployer) {
  deployer.deploy(TestToken)
  .then(() => TestToken.deployed())
  .then(_instance =>{
    fs.writeFile("./contractAddress/TestToken.json",JSON.stringify({
      address:_instance.address
    }))
  });
};
