
playerData(Map<String, dynamic>? player) {

  print('''
    ${player!['name']}, 
    Father : ${player['familyMember'][0]['name']},
    mother : ${player['familyMember'][1]['name']},
''');
}


void main() {

  Map<int, Map<String, dynamic>> player = {
    0 : {
        'name' : 'ahmed',
        'email' : 'ahmed.com',
        'scores' : {
          'sub1' : 200,
          'sub2' : 300
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : true,
        'familyMember' : [
          {
            'name' : 'ali father',
            'age' : 50
          },
          {
            'name' : 'ali mother',
            'age' : 40
          },
          {
            'name' : 'ali sister',
            'age' : 20
          },
        ]
      },
      1 : {
        'name' : 'ali',
        'email' : 'ali.com',
        'scores' : {
          'sub1' : 250,
          'sub2' : 350
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : false,
        'familyMember' : [
          {
            'name' : 'ali father',
            'age' : 50
          },
          {
            'name' : 'ali mother',
            'age' : 40
          },
          {
            'name' : 'ali sister',
            'age' : 20
          },
        ]
      },
  };

  playerData(player[0]);
  
}