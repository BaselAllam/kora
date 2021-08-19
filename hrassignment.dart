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




num sum(List<num> sumData) {

  num sumValue = 0;

  for(int i = 0; i < sumData.length; i++) {
    sumValue += sumData[i];
  }

  return sumValue;
}


reviewSalaryDeduction(Map<String, dynamic> empData) {

  try{
    num deductionValue = empData['upsent'].length * 100;

    num newSalaryAfterDed = empData['salary'] - deductionValue;

    empData['salaryAfterDeduction'] = newSalaryAfterDed;
  }catch(e) {
    print(e);
  }
}



void main() {

  List<num> upsents = [];
  List<num> salaries = [];

  emp.forEach((i) {
    upsents.add(i['upsent'].length);
    salaries.add(i['salary']);
    reviewSalaryDeduction(i);
  });

  print(emp);

  print('------------------------------');

  num totalUpsent = sum(upsents);
  print('Total Upsent is $totalUpsent');
  print('------------------------------');
  num totalSalary = sum(salaries);
  print('Total Salaries is $totalSalary');
  print('------------------------------');
}