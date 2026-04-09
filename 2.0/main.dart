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
}
