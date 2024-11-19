void main() {

  //değişkeni nullable yapmak için değişken isimin başına "?" koy

  String? isim = null;

  // nullable bir değer varsa default bir değer yazdırmak için bu şekilde yapıyoruz
  print(isim ?? "Default");

  isim = "Ahmet";
  print(isim);

  if(isim != null) {
    print("İsim uzunluğu: ${isim.length}");
  }
}