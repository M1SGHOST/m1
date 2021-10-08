import 'dart:io';

void main() {
  calculator calc = calculator();
  int i = 1;
  for (var i = 1; i != 0;) {
    print("please enter the first number");
    int num1 = int.parse(stdin.readLineSync()!);
    print("please enter the operation type ");
    var op = stdin.readLineSync();
    print("please enter the second number");
    int num2 = int.parse(stdin.readLineSync()!);
    switch (op) {
      case '+':
        calc.add(num1, op, num2);
        print(calc.res);
        continue;
      case '-':
        calc.sub(num1, op, num2);
        print(calc.res);
        continue;
      case '*':
        calc.mul(num1, op, num2);
        print(calc.res);
        continue;
      case '/':
        calc.div(num1, op, num2);
        print(calc.res);
        continue;
      default:
        print("Erorr Wrong operator");
        i = 0;
        break;
    }
  }
}

class calculator {
  var num1;
  var op;
  var num2;
  var res;

  int add(int num1, String? op, int num2) {
    res = num1 + num2;
    return res;
  }

  int sub(int num1, String? op, int num2) {
    res = num1 - num2;
    return res;
  }

  int mul(int num1, String? op, int num2) {
    res = num1 * num2;
    return res;
  }

  double div(int num1, String? op, int num2) {
    res = num1 / num2;
    return res;
  }
}
