//Task 1
class Book {
  final String title;
  final String author;
  final int num_of_pages;

  Book(this.title, this.author, this.num_of_pages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $num_of_pages');
  }
}

//Task 2

class Novel extends Book {
  final String genre_of_Novel;
  Novel(super.title, super.author, super.num_of_pages, this.genre_of_Novel);
  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre of Novel : $genre_of_Novel');
  }
}

//Task 3

abstract class Shape {
  double area(); // Abstract method for calculating area
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return 22 / 7 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void calculateArea(Shape shape) {
  print('Area: ${shape.area()}');
}

//Task 4

abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  final String name;
  final int age;

  User(this.name, this.age);

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}

class Product implements Serializable {
  final String name;
  final double price;

  Product(this.name, this.price);

  @override
  String toJson() {
    return '{"name": "$name", "price": $price}';
  }
}

//Task 5

class OverdrawnException implements Exception {
  String errorMessage() =>
      'Error: Cannot withdraw more than the available balance.';
}

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, {this.balance = 0.0});

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount should be greater than zero.');
    } else {
      balance += amount;
      print('Deposited $amount. New balance is $balance.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount should be greater than zero.');
    } else if (amount > balance) {
      throw OverdrawnException();
    } else {
      balance -= amount;
      print('Withdrawn $amount. New balance is $balance.');
    }
  }

  void checkBalance() {
    print('Current balance: $balance');
  }
}
