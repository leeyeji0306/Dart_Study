void main() {
  print('hello world') //프린트 함수
  var name = '니꼬'; //함수, 메소드 내부에서 지역변수 선언할 때
  String name2 = '니꼬'; //클래서에서 변수나 속성(property)를 선언할 때
  name = 'nico';
  name2 = 'nico';

  //dynamic : 여러가지 타입을 가질 수 있는 변수에 쓰는 키워드. 필요할 때만 씀.(막 쓰는거 아님)
  var name3; //var 키워드를 통해서 초기화를 안해주면 dynamic으로 세팅됨.
  dynamic name4; //dynamic 키워드 자체를 사용할 수도 있음.

  
}
