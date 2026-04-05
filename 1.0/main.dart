void main() {
  print('hello world') //프린트 함수
  var name = '니꼬'; //함수, 메소드 내부에서 지역변수 선언할 때, 가능한한 이걸 많이 사용하기
  String name2 = '니꼬'; //클래서에서 변수나 속성(property)를 선언할 때
  name = 'nico';
  name2 = 'nico';

  //dynamic : 여러가지 타입을 가질 수 있는 변수에 쓰는 키워드. 필요할 때만 씀.(막 쓰는거 아님)
  var name3; //var 키워드를 통해서 초기화를 안해주면 dynamic으로 세팅됨.
  dynamic name4; //dynamic 키워드 자체를 사용할 수도 있음.

  //nul safety : 개발자가 null을 참조할 수 없도록 하는 것.
  String? nico = 'nico'; //변수의 타입 뒤에 ?를 붙이면 null도 넣을 수 있는 변수가 됨. ?가 없으면 null 못들어감
  nico = null;
  // if(nico != null){ //런타임 오류를 막기 위해서 null인 것을 체크해줘야함.
  //     nico.isNotEmpty; //컴파일러가 변수가 null일 수도 있다는 것을 알기 때문에 length 같은 타입 속성을 쓰려할 때 경고를 해줌.
  // }
  nico?.isNotEmpty; //if를 써도 되지만 이런식으로 변수명 뒤에 ?를 붙혀줄 수도 있음. 여기서 '변수명?'는 변수안에 null안들어잇지?하고 물어보는거임.
  
  final name5 = 'nico'; //값을 변경할 수 없음. 자바스크립트의 const같은 개념
  // name5='nico'; //에러

  //late : final이나 var 앞에 붙어서 초기 데이터 없이 변수를 선언할 수 있게 해줌.
  //쓰임새 : api에서 데이터를 가져와서 넣어줄 수 있음.
  late final String name6;
  //api에서 데이터 받아오기
  name6 = 'nico';

  //const : 컴파일타임컨스턴트를 만들어 준다. final과 같이 값을 변경할 수 없다. 자바스크립트의 const와 다르다.
  //final과의 차이점 : 컴파일타임에 알고 있는 값이어야 한다.
}
