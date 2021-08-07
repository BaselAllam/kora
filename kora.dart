import 'demodata.dart';

playerData(Map<String, dynamic>? playerData) {

  print(
    '''
    Name Is: ${playerData!['name']}, 
    '''
  );
}


loopOnPlayerData(List<Map<String, dynamic>>? playerList) {

  for(Map<String, dynamic> i in playerList!) {
    playerData(i);
    i['familyMember'].forEach((x) {
      playerData(x);
    });
  }
}


void main() {

  loopOnPlayerData(player);
  
}




// avg


Map<int, List<num>> lists = {
  1 : [
    10, 20, 30
  ],
  2 : [
    100, 200, 300
  ],
  3 : [
    150, 250, 530
  ],
  4 : [
    20, 60, 70
  ]
};


getAvg(List x) {

  num sum = x.reduce((value, element) => value + element);

  num count = x.length;

  num avg = sum / count;

  print(avg);
}