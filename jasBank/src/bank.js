'use strict';
class Bank {
  constructor() {
    this.accounts = [];
  };
  createAccount(number_account) {
    this.accounts.push(new Account(number_account));
  };
   all() {
     let list = this.accounts.map(num => num.ACCOUNT_NUMBER);
     list;
   };
};
