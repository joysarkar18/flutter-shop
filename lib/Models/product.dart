class Product {
  String name;
  String description;
  String imgUrl;
  int price;
  int offer;

  Product(this.name, this.description, this.imgUrl, this.price, this.offer);

  toJson() {
    return {
      "name": this.name,
      "description": this.description,
      "imgUrl": this.imgUrl,
      "price": this.price,
      "offer": this.offer,
    };
  }
}
