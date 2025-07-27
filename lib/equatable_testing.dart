import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            // instanse create Person class, values same
            Person person = Person(name: 'arsh', age: 12);
            Person person1 = Person(name: 'arsh', age: 12);

            // different-2 hasCode
            print(person.hashCode.toString());
            print(person1.hashCode.toString());

            // false show me
            // hasCode with show equale
            print('person == person1 ' + '${person == person1}');

            // true show me
            print( 'person == person ' + '${person == person}');


          }),
    );
  }
}

// custom code with
// class Person {
//    final String name;
//    final int age;
//
//    const Person({required this.name, required this.age});
//
// // that code   two compare instance same class ,  with hasCode with
// //    that operator cheack with one instance , second instance with camparation if value same
//    @override
//   bool operator ==(Object other) {
//     // TODO: implement ==
//     return identical(this, other) ||
//       other is Person &&
//             runtimeType == other.runtimeType &&
//             name == other.name &&
//            age == other.age;
//   }
//   @override
//   // TODO: implement hashCode
//   int get hashCode => name.hashCode ^ age.hashCode;
//
// }


// Equatable Package with
// if class big then use that  , easily comparison
class Person extends Equatable {

  final String name ;
  final int age;

  const Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name,age];
}