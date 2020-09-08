'use strict';
class Account {
  constructor(number_of_account) {
    this.ACCOUNT_NUMBER = number_of_account;
  };
};

class Bank {
  constructor() {
    this.accounts = [];
  };
  createAccount(number_account) {
    this.accounts.push(new Account(number_account));
  };
};
