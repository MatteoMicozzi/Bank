'use strict';

describe("Bank", function() {
  var bank;
  beforeEach(function() {
    bank = new Bank;
  });
  describe("#createAccount", function() {
    it("increase the number of accounts", function() {
      bank.createAccount("012345");
      expect(bank.accounts.length()).toEqual(1);
    });
  });
});
