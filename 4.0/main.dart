class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  }); //이거 생성자임 ㄷㄷ, 파라미터 위치 중요함.

  void sayHello() {
    print("Hi my name is $name");
  }
}
//클래스를 생성할 때는 변수의 타입을 꼭 지정해줘야함.
//name을 수정할 수 없게 하기 위해서는 앞에 'final'을 붙혀줘야함.
//변수를 사용할 때 this.을 사용하지 않음.

void main() {
  var player = Player(
    name: 'nico',
    xp: 1500,
    team: 'red',
    age: 21,
  ); //객체를 만들 땐 new 연산자를 쓰지 않음.
  player.sayHello();
  var player2 = Player(name: 'lynn', xp: 2500, team: 'blue', age: 12);
  player2.sayHello();
}

//dart는 거의 다 class로 이루어져 있음. 매우매우 중요함.
