class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  BankAccount(this.accountNumber, this.balance, this.accountType, this.interestRate);

  void deposit(double amount) 
  {
    balance = balance + amount;
  }

  void withdraw(double amount) 
  {
    if (balance >= amount) 
    {
      balance = balance - amount;
    } else 
    {
      print("Insufficient balance.");
    }
  }

  void addInterest() 
  {
    balance = balance + (balance * (interestRate / 100));
  }

  void display() 
  {
    print("Account Number: $accountNumber");
    print("Balance: \$${balance.toStringAsFixed(2)}");
    print("Account Type: $accountType");
    print("Interest Rate: $interestRate%");
  }
}