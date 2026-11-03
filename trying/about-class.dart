class Kucing {
  Kucing(this.name);

  final String name;

  void suara() {
    print("Meongs");
  }
}

void main() {
  final K = Kucing('RAIDEN');
  print(K.name);
  K.suara();
}
