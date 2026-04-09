void main() {
  String name = 'nico';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  //dart는 거의 대부분이 객체로 되어있음. 심지어 function도 객체로 되어있어서 진정한 객체 지향 언어임.
  num x = 12; //int와 double은 num에 상속을 받아서 만들어짐.
  x = 1.1; //그래서 실수일 수도 있음.

  //list 형태 : var 변수명 = [value1, value2, value3......], List<타입> 변수명 = [value1, value2, value3......]
  var giveMeFive = true;
  var numbers = [1, 2, 3, 4, if (giveMeFive) 5];
  print(numbers);
  //collection if : 조건이 참이면 'if(조건식) 깂'에서 값을 넣어라
  // if(변수명){
  //   리스트명.add(넣을값)
  // }
  //이 문장을 저렇게 줄인거임.

  // List<int> numbers1 = [1, 2, 3, 4]; //자료형 명시는 클래스에서!!
  // numbers.add('lalala') //에러, 타입이 다름
  numbers.add(1);
  numbers.first; //list의 첫번째 요소를 가져와라.
  numbers.last; //list의 마지막 요소를 가져와라.
  //collection if와 collection for을 지원한다.

  var name1 = 'nico';
  var age1 = 10;
  var greeting = "Hello everyone, my name is $name1, and I'm ${age1 + 2}";
  //문자열 쓰다가 안에 변수 내용을 넣고 싶을 때 !!!!! : "$변수명"
  //문자열 쓰다가 안에 숫자 계산을 쓰고싶다면?? : "${변수명 + 값}"
  print(greeting);

  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💓 $friend",
  ]; //collection for : 위 처럼 다른 list를 돌면서 새로운 리스트에 그 값을 그대로 넣어줄 수도 있고 바꿔서 넣어줄 수도 있음(미쳤다!!!!!)
  print(newFriends);

  //Map : 자바스크립트에서의 객체, 파이썬에선 dictionary랑 비슷한 개념.
  //형태 : var 변수명 = {'키' : value, '키' : value, '키', value......},
  //      Map<키값 자료형, value값 자료형> = {'키', value, '키', value......}
  var player = {'name': 'nico', 'xp': 19.99, 'superpower': false};
  //value와 키에는 어떤 것이든(bool, double, int, string, num 등 모두 다!! 심지어 list 까지 ㄷㄷ..) 올 수 있음.
  Map<int, bool> player1 = {1: true, 2: false, 3: true};
  Map<List<int>, bool> player2 = {
    [1, 2, 3, 5]: true,
  };
  //오 미친 List<Map<키 자료형, value 자료형>> 이것도 됨 ㄷㄷ...
  List<Map<String, Object>> players = [
    {'name': 'nico', 'xp': 199993.999},
    {'name': 'nico', 'xp': 199993.999},
  ];
}
