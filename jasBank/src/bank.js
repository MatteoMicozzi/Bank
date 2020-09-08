'use strict';
class Bank {
  constructor() {
    this.accounts = [];
  };
  createAccount(number_account) {
    this.accounts.push(new Account(number_account));
  };
};
