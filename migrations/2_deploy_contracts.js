const SAMToken = artifacts.require("SAMToken");

module.exports = function(deployer) {
    deployer.deploy(SAMToken).then(() => {
        console.log("SAMToken contract address is: ", SAMToken.address)
    });
}