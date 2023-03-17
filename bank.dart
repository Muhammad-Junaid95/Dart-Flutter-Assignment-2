//Create a class named “Bank” with a list of BankAccount objects as a property.
//Add a method to add a new bank account to the list, and another method to remove a bank account from the list.
//Also, add a method to find the bank account with the highest balance.
void main() {
  Bank bank = Bank();

  Account account1 = Account("Muhammad Junaid", "10001", 5000);
  Account account2 = Account("Rehan Khan", "10002", 8000);
  Account account3 = Account("Fayyaz", "10003", 6000);
  Account account4 = Account("Muzammil Bilwani", "10004", 20000);

  bank.addAccount(account1);
  bank.addAccount(account2);
  bank.addAccount(account3);

  print("\nAccounts Details\n");
  for (var account in bank.accounts) {
    print(
        "Account Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nBalance: \$${account.balance}\n");
  }

  Account highestBalanceAccount = bank.getHighestBalanceAccount();
  print(
      "Account with highest balance:\nAccount Holder Name: ${highestBalanceAccount.name}.\nAccount Number: ${highestBalanceAccount.accountNumber}.\nAccount Balance: \$${highestBalanceAccount.balance}\n");

  bank.removeAccount(account1);
  print("\nAccounts in bank after removing Junaid's Account:");
  for (var account in bank.accounts) {
    print(
        "\nAccount Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nAccount Balance \$${account.balance}.\n");
  }

  bank.addAccount(account4);
  print("\nAccounts in bank after adding Muzammil Bilwani's Account:\n");
  for (var account in bank.accounts) {
    print(
        "\nAccount Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nAccount Balance \$${account.balance}.\n");
  }

  highestBalanceAccount = bank.getHighestBalanceAccount();
  print(
      "\nAccount with highest balance:\n\nAccount Holder Name: ${highestBalanceAccount.name}.\nAccount Number: ${highestBalanceAccount.accountNumber}.\nAccount Balance: \$${highestBalanceAccount.balance}\n");
}

class Bank {
  late List<Account> accounts;

  Bank() {
    accounts = [];
  }

  void addAccount(Account account) {
    accounts.add(account);
  }

  void removeAccount(Account account) {
    accounts.remove(account);
  }

  Account getHighestBalanceAccount() {
    late Account highestBalanceAccount;
    double highestBalance = 0;

    for (var account in accounts) {
      if (account.balance > highestBalance) {
        highestBalance = account.balance;
        highestBalanceAccount = account;
      }
    }
    return highestBalanceAccount;
  }

  void printInfo() {}
}

class Account {
  String name;
  String accountNumber;
  double balance;

  Account(this.name, this.accountNumber, this.balance);
}
