var Leaderboard = artifacts.require("Leaderboard");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(Leaderboard);
};