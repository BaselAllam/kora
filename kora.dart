

void main() {

  // std => id => email, name

  List<Map<int, Map<String, String>>> std = [
    {
      0 : {
        'name' : 'ali',
        'email' : 'ali.com'
      },
    },
    {
      0 : {
        'name' : 'ali',
        'email' : 'ali.com'
      },
    },
  ];

  Map<int, Map<String, dynamic>> stds = {
    0 : {
        'name' : 'ali',
        'email' : 'ali.com',
        'scores' : {
          'sub1' : 200,
          'sub2' : 300
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : true,
      },
      1 : {
        'name' : 'ali',
        'email' : 'ali.com',
        'scores' : {
          'sub1' : 200,
          'sub2' : 300
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : false,
      },
  };

  print(stds[0]);
  std[0][0]!['email'] = 'email.com';
  print(std[0][0]);
}