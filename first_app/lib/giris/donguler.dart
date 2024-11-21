void main() {

  //for döngüsü

  for ( int i = 0; i<5 ; i++) {
    print("For döngüsü değer: $i");
  }

  // while döngüsü

  int j = 0;
  while(j<5) {
    print("While döngüsü değer: $j");
    j++;
  }

  //foreach döngüsü
  var liste = ["Ahmet", "Ali", "Veli"];
  liste.forEach((isim) => print("isim: $isim"));
}