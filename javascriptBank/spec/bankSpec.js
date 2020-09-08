'use strict';

describe("Bank", function() {
  let bank_num_1;
  beforeEach(function() {
    bank_num_1 = new Bank;
  });
  describe("#createAccount", function() {
    it("increase the number of accounts", function() {
      bank_num_1.createAccount("012345");
      expect(bank_num_1.accounts.length).toEqual(1);
    });
  });
  describe("#all", function() {
    it("print the account number", function() {
      bank_num_1.createAccount("012345");
      let list = bank_num_1.all();
      expect(list.includes("012345")).toEqual(true);
    });
  });
});
