class CartProduct {
  String name;
  String description;
  String imgUrl;
  int price;
  int offer;
  int count;

  CartProduct(this.name, this.description, this.imgUrl, this.price, this.offer,
      this.count);

  toJson() {
    return {
      "name": this.name,
      "description": this.description,
      "imgUrl": this.imgUrl,
      "price": this.price,
      "offer": this.offer,
      "count": this.count,
    };
  }
}
