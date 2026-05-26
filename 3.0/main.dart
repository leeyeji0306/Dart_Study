String sayHello({
  required String name,
  required int age,
  required String country,
}) =>
    ("Hello $name, you are $age, and you come from $country"); //function 앞의 데이터 형은 리턴할 데이터의 타입이다. void는 return을 하지 않을 때 쓴다.
//한줄이고 return을 할 때 중괄호 없이 화살표 함수로 적어줄 수 있다.

num plus(num a, num b) => a + b;

void main() {
  print(sayHello(age: 12, country: 'cicici', name: 'lalala'));
}

//dart의 function은 named parameter라는 걸 지원함. named parameter? : 위의 코드와 같이 순서에 상관 없이 이름으로 그 파라미터에 값을 넣어주는 것.
//named parameter은 사용자가 파라미터값을 안넣을 것을 두려워함.
//해결방법 : default 값을 정해준다, 파라미터 앞에 required 키워드를 붙혀서 호출할 때 무조건 사용해야 하도록 한다.
