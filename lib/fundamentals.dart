import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  print("hi there");
  print(9 == 9);
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  //variables
  String name = "Risper";
  int age = 26;
  double pi = 3.142;
  bool isLearningFlutter = true;

  /* 
  loops
  

  forloop
  for( initialization; condition; iteration) {

  }

  while(condition){

  }
  
  functions

   */

  @override
  Widget build(BuildContext context) {

    // for(int i=0; i<=5; i++){
    //   print(i);

    // }

    int countdown = 6;

    while(countdown > 0){
      print (countdown);
      countdown--;
    }


    if(age >= 18){
      print("you're an adult");
    } else{
      print("you are not an adult");
    }

//function that does not return sth, hence void
   void greetPerson(String name) {
    print("Hello $name");
   }

   greetPerson('Risper');
   


   //functions that return type
int add( int a, int b) {
  int sum = a + b;
  return sum;
}

int mySum = add(3,6);
print(mySum);


//data structures
List<int> numbers = [1,2,3,4,5,6];
//print all numbers in the list
 void printNumbers() {
  for( int i=0; i<numbers.length; i++) {
  print(numbers[i]);
}

 }
 printNumbers();
//Set: unordered collection of unique elements, no duplicates
 Set<String> uniqueNames = {"Mitch", "Sharon", "Risper"};

 //map:  object of key value pairs
 Map user = {
  'name' : 'Risper',
  'age' : 26,
  'height' : 168,
 };

 print (user['name']);


    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold()
      
    );
  }
}