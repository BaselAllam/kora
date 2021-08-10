List<Map<String, dynamic>> player = [
  {
        'name' : 'ahmed',
        'email' : 'ahmed.com',
        'scores' : {
          'sub1' : 200,
          'sub2' : 300
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : false,
        'familyMember' : [
          {
            'name' : 'ahmed father',
            'age' : 50
          },
          {
            'name' : 'ahmed mother',
            'age' : 40
          },
          {
            'name' : 'ahmed sister',
            'age' : 20
          },
        ]
      },
    {
        'name' : 'ali',
        'email' : 'ali.com',
        'scores' : {
          'sub1' : 250,
          'sub2' : 50
        },
        
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
      {
        'name' : 'mohsen',
        'email' : 'mohsen.com',
        'scores' : {
          'sub1' : 50,
          'sub2' : 50
        },
        'fiends' : [
          1, 2, 3
        ],
        'isSuccess' : true,
        'familyMember' : [
          {
            'name' : 'mohsen father',
            'age' : 50
          },
          {
            'name' : 'mohsen mother',
            'age' : 40
          },
          {
            'name' : 'mohsen sister',
            'age' : 20
          },
        ]
      },
];


List<Map<String, dynamic>> emp = [
  {
      'name' : 'ahmed',
      'email' : 'ahmed.com',
      'upsent' : [
        '10-aug', '15-aug', '20-aug'
      ],
      'salary' : 2000,
      'salaryAfterDeduction' : 1500,
    },
    {
      'name' : 'ali',
      'email' : 'ali.com',
      'upsent' : [
        '10-aug', '20-aug'
      ],
      'salary' : 2500,
      'salaryAfterDeduction' : 2500,
    },
    {
      'name' : 'mona',
      'email' : 'mona.com',
      'upsent' : [
        
      ],
      'salary' : 3000,
      'salaryAfterDeduction' : 3200,
    },
];


// HR system
// calculate total salary for each month
// calculate total upsent days for each month
// review deduction on salaries depends upsent days for each emp
// upsent date = 100
// exception handling
// nonpositional or positional