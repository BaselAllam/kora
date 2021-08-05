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