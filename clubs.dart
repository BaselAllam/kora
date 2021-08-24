import 'demodata.dart';


class Club{

  String clubName;
  String location;
  List<Player> players;

  Club(this.clubName, this.location, this.players);
}



class Player{

  String playerName;
  int playerSpeed;

  Player(this.playerName, this.playerSpeed);
}


class PlayerController{

  List<Player> createListOfPlayer(List<Map<String, dynamic>> i) {

    List<Player> allPlayers = [];

    for(Map<String, dynamic> player in i) {
      Player newPlayer = Player(player['name'], player['speed']);
      allPlayers.add(newPlayer);
    }

    return allPlayers;
  }
}



class ClubController{


  Club createClubObj(String name, String location, List<Player> players) {

    Club newClub = Club(name, location, players);

    return newClub;
  }  
}


main() {

  ClubController clubController = ClubController();

  PlayerController playerController = PlayerController();

  List<Player> allPlayers = playerController.createListOfPlayer(players);

  clubController.createClubObj('Arsenal', 'UK', allPlayers);
}