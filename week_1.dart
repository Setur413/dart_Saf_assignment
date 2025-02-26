void main (){
   // Defining and initializing variables of different types
  int age = 23;
  double height = 5.9;
  String name = "Jonah Tarus";
  bool isStudent = true;
  List<String> hobbies = ["Reading", "Gaming", "Coding"];

  // Printing the variables
  print("Age: $age");
  print("Height: $height");
  print("Name: $name");
  print("Is Student: $isStudent");
  print("Hobbies: $hobbies");

  //Defining functions
  // Function to convert String to int
int stringToInt(String value) {
  return int.parse(value);
}

// Function to convert String to double
double stringToDouble(String value) {
  return double.parse(value);
}

// Function to convert int to String
String intToString(int value) {
  return value.toString();
}

// Function to convert int to double
double intToDouble(int value) {
  return value.toDouble();
}

 // Test the conversion functions
  String strNumber = "42";
  print("String to int: ${stringToInt(strNumber)}");
  print("String to double: ${stringToDouble(strNumber)}");

  int intValue = 100;
  print("Int to String: ${intToString(intValue)}");
  print("Int to Double: ${intToDouble(intValue)}");

  // Function to check if a number is positive, negative, or zero
void checkNumber(int num) {
  if (num > 0) {
    print("$num is positive.");
  } else if (num < 0) {
    print("$num is negative.");
  } else {
    print("$num is zero.");
  }
}

// Function to check voting eligibility
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Function to print the day of the week using switch case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number.");
  }
}

// For loop: Prints numbers from 1 to 10
void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While loop: Prints numbers from 10 to 1
void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-While loop: Prints numbers from 1 to 5
void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}
 // If-Else: Check if a number is positive, negative, or zero
  checkNumber(5);
  checkNumber(-3);
  checkNumber(0);

  // If-Else: Check if a person is eligible to vote
  checkVotingEligibility(20);
  checkVotingEligibility(16);

  // Switch Case: Print the day of the week
  printDayOfWeek(3);
  printDayOfWeek(7);
  printDayOfWeek(8); // Invalid case

  // Loops
  print("For loop (1 to 10):");
  forLoopExample();

  print("\nWhile loop (10 to 1):");
  whileLoopExample();

  print("\nDo-While loop (1 to 5):");
  doWhileLoopExample();

  void categorizeNumber(int num) {
  switch (num) {
    case >= 1 && <= 10:
      print("$num is small.");
      break;
    case >= 11 && <= 100:
      print("$num is medium.");
      break;
    default:
      print("$num is large.");
  }
}
// Define a List of int numbers
  List<int> numbers = [3, 8, 15, 42, 105, 200];

  // Iterate through the list using a for loop
  for (int num in numbers) {
    print("\nNumber: $num");

    // Check if the number is even or odd using if-else
    if (num % 2 == 0) {
      print("$num is even.");
    } else {
      print("$num is odd.");
    }
    // Categorize the number using a switch statement
    categorizeNumber(num);
  }
}