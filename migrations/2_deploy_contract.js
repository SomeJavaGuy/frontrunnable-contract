const FrontrunnableContract = artifacts.require("FrontrunnableContract");

module.exports = function (deployer) {
  deployer.deploy(FrontrunnableContract);
};
