import 'package:flutter/material.dart';

// const age = 27;  
// const twiceTheAge = age * 2;

// String getFullName(String firstName, String lastName){
//   //return firstName + ' ' + lastName;
//   return '$firstName $lastName';
// }

String getFullName(String firstName, String lastName) =>
  '$firstName $lastName';

String printMyName(){
  return '';
}


void main() {

  //final name = 'Isaac';

  runApp(const MyApp());
}

enum AnimalType{
  cat,
  dog,
  bunny
}

// enum PersonProperties{
//   firstName, lastName, age
// }

class Person {

  final String name;

  Person(this.name);

  void printName(){
    print(name);
  }

  void run(){
    print('Running');
  }

  void breath(){
    print('Breathing');
  }
}

//Abstract Class
abstract class LivingThing{
  void breath(){
    print('Living things is breathing');
  }
  void move(){
    print('I am moving');
  }
}

//Inheritance
class Cat extends LivingThing{

}

//Factory Constructor
class Dog {
  final String name;
  Dog(this.name);
  factory Dog.fluffy(){
    return Dog('Fluffy');
  }

  //Custom Operator
  // @override 
  //   bool operator ==(covariant Dog other) => other.name == name;

  // @override
  //   int get hashCode => name.hashCode;
}

//Extensions
class Pet{
  final String name;
  Pet(this.name);
}
extension Run on Pet{
  void run(){
    print('Pet Cat $name is running');
  }
}
class Actor{
  final String firstName;
  final String lastName;
  Actor(this.firstName, this.lastName);
}
extension FullNmame on Actor{
  String get fullName => '$firstName $lastName';
}

//Future
Future<int> heavyFutureThatMultipliesByTwo(int a){
  return Future.delayed(const Duration(seconds: 3), () => a * 2);
}

//Streams
Stream<String> getName(){
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  } );
}

//Generators
Iterable<int> getOneTwoThree() sync*{
  //return [1, 2, 3];
  yield 1;
  yield 2;
  yield 3;
}

//Generics
// class Pair{
//   final String value1;
//   final String value2;
//   Pair(this.value1, this.value2);
// }

class PairOfStrings{
  final String value1;
  final String value2;
  PairOfStrings(this.value1, this.value2);
}

class PairOfIntegers{
  final String value1;
  final String value2;
  PairOfIntegers(this.value1, this.value2);
}

class Pair<A, B>{
  final A value1;
  final B value2;
  Pair(this.value1, this.value2);
}

void test(){

  //Generics
  // final names = Pair('foo', 20);
  // print(names);

  //Generators
  // for(final value in getOneTwoThree()){
  //   print(value);
  //   if(value == 2){
  //     break;
  //   }
  // }
  //print(getOneTwoThree());

//Future
//void test() async {

  //Streams
  // await for (final value in getName()){
  //   print(value);
  // }
  // print('Stream Finished Working');


  //Future
  //final result = await heavyFutureThatMultipliesByTwo(10);
  //print(result);


//void test(){
  //Extensions
  //final meow = Pet('Fluffers');
  //print(meow.name);
  //meow.run();

  //final tomCruise = Actor('Tom', 'Cruise');
  //print(tomCruise.fullName);

  //Custom Operators
  // final dog1 = Dog('Foo');
  // final dog2 = Dog('Foo');
  // if(dog1 == dog2){
  //   print('They are equal!');
  // } else{
  //   print('They are not equal!');
  // }

  //Factory Constructor
  //final fluffy = Dog.fluffy();
  //print(fluffy.name);

  //Abstract Class
  //final thing = LivingThing();

  //Inheritance
  //final fluffers = Cat();
  //fluffers.breath();

  //Constructure
  //final foo = Person('Foo Bar');

  //Objects

  //Person();
  //final foo = Person();

  //Classes

  // final person = Person();
  // person.run();
  // person.breath();

//void test(AnimalType animalType){

  //Switch Statement

  //if(animalType != AnimalType.cat) return;

  // switch(animalType){
  //   case AnimalType.cat:
  //     print('I Love Cats');
  //   break;
  //   case AnimalType.dog:
  //     print('I Love Dogs');
  //   break;
  //   case AnimalType.bunny:
  //     print('I Love Bunnies');
  //   break;
  // }

  // if(animalType == AnimalType.cat){
  //   print('I Love Cats');
  // } else if(animalType == AnimalType.dog){
  //   print('I Love Dogs');
  // } else if(animalType == AnimalType.bunny){
  //   print('I Love Bunnies');
  // }

  //print(animalType);
  


  //Enumerations

  //print(PersonProperties.firstName.name);

  // const name = 'foo';
  // const otherName = 'foo';

}

  //Conditional Invocation
//void test(List<String>? names){

  //names?.add('Baz');
  //print(names);

 //final length = names?.length ?? 0;
  
  //final numberOfNames = names.length;
  // final int length;
  // if(names != null){
  //   length = names.length;
  // } else{
  //   length = 0;
  // }


//void test(String? firstname, String? middlename, String? lastname){

  //Null Safety

  // String? name = firstname;
  // name ??= middlename;
  // name ??= lastname;
  // print(name);


  // const String? firstname = null;
  // const String? middlename = null;
  // const String? lastname = 'Baz';

  // const firstNonNullValue = firstname ?? middlename ?? lastname;
  // print(firstNonNullValue+' is the first non-null value');


  // if(firstname != null){
  //   print('first name is the first non-null value');
  // } else if(middlename != null){
  //    print('middle name is the first non-null value');
  // } else{
  //    print('last name is the first non-null value');
  // }

  // List<String?>? names = ['Isaac', 'Foo', 'Bar', null];
  // names = null;
  // print(names);

  // String? name = null;
  // print(name);
  // name = 'Isaac';
  // print(name);

  //Maps
  // var person = {
  //   'age': 20,
  //   'name': 'Foo',
  // };
  // print(person);
  // person['name'] = 'Isaac';
  // person['lastname'] = 'Baz';
  // print(person);


//Sets
  // var names = { 'Foo', 'Bar', 'Baz' };
  // names.add('Foo');
  // names.add('Bar');
  // names.add('Baz');
  // print(names);

  //Lists
  // var names = ['Foo', 'Bar', 'Baz'];
  // final foo = names[0];
  // final baz = names[2];
  // final namesLength = names.length;
  // names.add('My Name');
  // print(names);

  // final name = 'Isaac';
  // final nameTimes20 = name * 20;
  // print(nameTimes20);

  // var age = 30;
  // final halfOfAge = age / 2;
  // final doubleTheAge = age * 2;
  // final ageMinusOne = --age;
  // print(ageMinusOne);

  // final name = 'Foo';
  // if(name == 'Foo'){
  //   print('Yes this is Foo');
  // } else if (name != 'Bar' ){
  //   print('This value is not Bar');
  // }else{
  //     print("I don't know what this is");
  // }

//}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //print(getFullName('Isaac', 'Groisman'));
    //test(null, null, 'Baz');

    //test(AnimalType.cat);

    test();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
