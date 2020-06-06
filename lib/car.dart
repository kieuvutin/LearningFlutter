class Car{
  String name;
  int yearOfProduct;
  Car(String name, int yearOfProduct){
    this.name = name;
    this.yearOfProduct = yearOfProduct;
  }

  @override
  String toString() {
    return this.name + ' + ' + this.yearOfProduct.toString();
  }
}