var Election = artifacts.require("./Election.sol");

contract("Election", function(accounts) {

    var electionInstance;

    it("initialize with two candidates", function() {
        return Election.deployed().then( function(instance) {
            return instance.candidatesCount();
        }).then( function(count) {
            assert.equal( count, 2 );
        });
    });

    it("it initialized the candidates with the correct values", function() {
        return Election.deployed().then( function(instance) {
            electionInstance = instance;
            return electionInstance.candidates(1);
        }).then( function(candidate) {
            assert.equal(candidate[0], 1, "id = 1");
            assert.equal(candidate[1], "TIGER 1", "correct name");
            assert.equal(candidate[2], 0, "vote count = 0");
            return electionInstance.candidates(2);
        }).then( function(candidate) {
            assert.equal(candidate[0], 2, "id = 1");
            assert.equal(candidate[1], "EAGLE 2", "correct name");
            assert.equal(candidate[2], 0, "vote count = 0");
        });
    });
});