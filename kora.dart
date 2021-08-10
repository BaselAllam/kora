// import 'demodata.dart';

// void main() {

//  player.forEach((i) {
//    num sums = sum(i['scores']);
//    print(sums);
//  });

// }


// num sum(Map<String, num> numbers) {

//   num sums = 0;
//   numbers.forEach((key, value) {
//     sums += value;
//   });
//   return sums;
// }

// main() {

//   test('ahmed', 20, isMarried: true, salary: 200);

// }

// test(String name, int age, {bool isMarried = false, int? salary}) {

//   print('$name $age $isMarried $salary');
// }

// import 'demodata.dart';

// main() {
  
//   player.forEach((i) {
//     friendData(friend: i['fiends']);
//   });
// }


// friendData({List? friend}) {

//   print('$friend');
// }

main() {
  List<num> y = [10, 20];

  print(avg(y));
}

num avg(List<num> x) {

  try{
    num sum = x.reduce((value, element) => value + element);

    num avg = sum / x.length;

    return avg;
  }catch(e) {
    print(e);
    return 404;
  }
}




