void main() {
  List<String> isimler = ["Ahmet", "Ali", "Ayşe"];
  print(isimler);
  isimler.add("Fatma");
  print(isimler);

  //Liste Filtreleme
  var uzunIsimler = isimler.where((isim) => isim.length > 4).toList();
  print("Uzun isimler: $uzunIsimler");

  // HashMap
  Map< String, int> yaslar = {"Ali":25, "Ahmet": 37};
  yaslar["Ayşe"]=30;
  print(yaslar);

  //Hashset: Benzersiz değerleri barındırır
  //HashSet
  var benzersizSet = <int>{1,2,3,3,3,3};
  print(benzersizSet);

}