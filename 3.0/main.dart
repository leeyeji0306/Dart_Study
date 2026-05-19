String sayHello(String name) =>
    ("Hello $name nice to meet you!"); //function 앞의 데이터 형은 리턴할 데이터의 타입이다. void는 return을 하지 않을 때 쓴다.
//한줄이고 return을 할 때 중괄호 없이 화살표 함수로 적어줄 수 있다.

num plus(num a, num b) => a + b;

void main() {
  print(sayHello('nico'));
}
