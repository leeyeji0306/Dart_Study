// //abstruct class(추상화 클래스) : 우리가 절대절대 작성할일 없는 클래스. 객체를 생성할 수 없음. 다른 클래스들이 직접 구현해야하는 메소드 들을 모아놓은 일종의 청사진이라고 보면됨.
// abstract class Human {
//   void walk(); //Human 클래스는 walk라는 메소드를 가지고 walk는 void를 반환한다 라고만 해놓는다.
// }

// //작은 실수들을 줄여주기 위해 Enum을 사용함. 예) team에 red를 redd로 쓴다던가, team에 blue를 bule로 쓴다던가 하는 실수들.
// enum Team { red, blue } //""(큰따옴표)를 쓰지 않음.

// enum XPLevel { beginner, mediun, pro }

// class Coach extends Human {
//   void walk() {
//     print('the coach is walking');
//   }
// }

// //다른 클래스에 상속하게 되면 그 메소드를 꼭 오버라이딩을 해줘야한다.
// class Player extends Human {
//   String name;
//   XPLevel xp;
//   Team team;

// Player.fromJson(Map<String, dynamic> playerJson)
//   : name = playerJson['name'],
//     xp = playerJson['xp'],
//     team = playerJson['team'];

// Player({
//   required this.name,
//   required this.xp,
//   required this.team,
// }); //이거 생성자임 ㄷㄷ, 파라미터 위치 중요함.

// void walk() {
//   print("I'm walking");
// }

// Player.createBluePlayer({
//   required String name,
//   required int age,
// }) //Player 초기화, 생성자가 아니라 메소드임.
// : this.age = age,
//      this.name = name,
//      this.team = 'blue',
//      this.xp = 0;

// Player.createRedPlayer(String name, int age)
//   : this.age = age,
//     this.name = name,
//     this.team = 'red',
//     this.xp = 0;

//:(콜론) : 사용자에게 받은 값들로 Pleayer 객체를 초기화하겠다고 알려주는 기호.

// void sayHello() {
//   print("Hi my name is $name");
// }
// }
//클래스를 생성할 때는 변수의 타입을 꼭 지정해줘야함.
//name을 수정할 수 없게 하기 위해서는 앞에 'final'을 붙혀줘야함.
//변수를 사용할 때 this.을 사용하지 않음.

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({required this.team, required String name}) : super(name: name);
  //Player 생성자에서 온 name은 그 즉시 super 생성자로 전달됨.
  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  // var player = Player.createBluePlayer(
  //   name: 'nico',
  //   age: 21,
  // ); //객체를 만들 땐 new 연산자를 쓰지 않음.
  // player.sayHello();
  // var redPlayer = Player.createRedPlayer('lynn', 12);
  // redPlayer.sayHello();

  // var apiData = [
  //   {"name": "nico", "team": "red", "xp": 0},
  //   {"name": "lynn", "team": "red", "xp": 0},
  //   {"name": "dal", "team": "red", "xp": 0},
  // ];

  // apiData.forEach((playerJson) {
  //   var player = Player.fromJson(playerJson);
  //   player.sayHello();
  // });

  // var nico = Player(name: 'nico', xp: XPLevel.mediun, team: Team.red);
  // nico.name = 'las';
  // nico.xp = 1200000;
  // nico.team = 'blue';
  // var potate = nico
  //   ..name = 'las'
  //   ..xp = XPLevel.pro
  //   ..team = Team.blue
  //   ..sayHello();
  //위의 것과 같은 역할을 함.
  //.. : 앞의 .이 위의 클래스를 가르쳐서 접근할 수 있게 함. 아마 this 역할이지 않을까 싶음.
  var player = Player(team: Team.red, name: 'nico');
}

//dart는 거의 다 class로 이루어져 있음. 매우매우 중요함.
