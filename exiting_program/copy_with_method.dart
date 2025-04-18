void main(){
  Person user1 = Person(name: "Rahim", age: '25');

  // নতুন কপি বানালাম, শুধু age চেঞ্জ করলাম
  Person user2 = user1.copyWith(age: '30');

  print(user1.name); // Rahim
  print(user1.age);  // 25

  print(user2.name); // Rahim
  print(user2.age);  // 30
  
}
//



class Person{
final String name;
final String age;
Person({required this.name, required this.age});


  Person copyWith({String? name, String? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }


}