String sayHello(String name, int age, [String? country = 'cuba']) =>
    ("Hello $name, you are $age, and you come from $country"); //function 앞의 데이터 형은 리턴할 데이터의 타입이다. void는 return을 하지 않을 때 쓴다.
//한줄이고 return을 할 때 중괄호 없이 화살표 함수로 적어줄 수 있다.

num plus(num a, num b) => a + b;

String capitalizeName(String? name) {
  // if (name != null) {
  //   return name.toUpperCase();
  // }
  // return 'ANON';

  // return name != null ? name.toUpperCase() : 'ANON';

  return name?.toUpperCase() ?? 'ANON';
}

typedef ListOfInts = List<int>;
//타입 이름을 사용자가 지정할 수 있음.

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  sayHi({"name" : 'nico'})
}

//position parameter : 평소에 사용하는 흔한 파라미터. 순서를 중요시 함. 각각의 위치를 외워서 작성해야 하기 때문에 불편함.
//dart의 function은 named parameter라는 걸 지원함. named parameter? : 위의 코드와 같이 순서에 상관 없이 이름으로 그 파라미터에 값을 넣어주는 것.
//named parameter은 사용자가 파라미터값을 안넣을 것을 두려워함.
//해결방법 : default 값을 정해준다, 파라미터 앞에  키워드를 붙혀서 호출할 때 무조건 사용해야 하도록 한다.
//optinal position parameter : 그 변수의 값이 들어올 수도 있고 안들어올 수도 있다(?로 표시)를 표시해주고 default 값을 정해준다.
//??(QQ) : 좌항이 null이면 우항을 return, 좌항이 null이 아니면 그대로 좌항을 return
//??=(null aware operator) : 좌항이 null이면 우항의 값을 좌항에 대입해라.
//typedef : 원래 있던 데이터 타입을 사용자 정의 이름으로 정의하여 쓸 수 있게 하는 것.