void main() {

double calculateDiscount(double amount) {
  if (amount < 50) {
    return amount;
  } else if (amount <= 100) {
    return amount * 0.95;
  } else {
    return amount * 0.90;
  }
}


  print(calculateDiscount(45));  
  print(calculateDiscount(75)); 
  print(calculateDiscount(150));


  double calculateTotal(List<Map<String, dynamic>> cart) {
  double total = 0.0;

  for (var item in cart) {
    total += item['price'] * item['quantity'];
  }

  return total;
}

 
  List<Map<String, dynamic>> cart = [
    {"name": "Apple", "price": 1.50, "quantity": 4},
    {"name": "Banana", "price": 0.75, "quantity": 6},
    {"name": "Orange", "price": 2.00, "quantity": 3},
  ];

  print(calculateTotal(cart));


  List<Map<String, dynamic>> assignGrades(List<Map<String, dynamic>> students) {
  for (var student in students) {
    int score = student['score'];

    if (score >= 90) {
      student['grade'] = 'A';
    } else if (score >= 80) {
      student['grade'] = 'B';
    } else if (score >= 70) {
      student['grade'] = 'C';
    } else if (score >= 60) {
      student['grade'] = 'D';
    } else {
      student['grade'] = 'F';
    }
  }

  return students;
}


  List<Map<String, dynamic>> students = [
    {"name": "Alice", "score": 95},
    {"name": "Bob", "score": 67},
    {"name": "Charlie", "score": 82},
  ];

  print(assignGrades(students));
  

}


