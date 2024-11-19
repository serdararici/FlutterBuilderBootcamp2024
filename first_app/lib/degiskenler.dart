void main() {
  // Değişken  tanımlama
  int yas = 30;
  double boy = 1.80;
  String isim = "Ahmet";

  //var
  var sehir = "Mersin";
  var kilo = 73.0;

  print("Ad: $isim , Yaş: $yas, Boy: $boy, Şehir: $sehir , Kilo: $kilo" );

  //Dinamik tür

  dynamic dinamikDeger = "Merhaba";
  print(dinamikDeger);
  dinamikDeger = 123;
  print(dinamikDeger);

  const pi = 3.14;
  final date = DateTime.now();

  print("Pi Sabiti: $pi, Tarih: $date");
}
