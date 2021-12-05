class ProductModel {
  final String name, description, mainPic, location, minBid, endTime;
  final List<String> photos;

  ProductModel({
    this.name,
    this.description,
    this.mainPic,
    this.photos,
    this.location,
    this.minBid,
    this.endTime,
  });
}
