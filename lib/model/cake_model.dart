class Cake {
  String? imgUrl, title, description;

  Cake({this.imgUrl, this.title, this.description});
}

List<Cake> cakes = [
  Cake(
    imgUrl: 'assets/images/ckake1.jpg',
    title: 'Chocolate Cup \nCake',
    description: '12 ingredients | 40 mins',
  ),
  Cake(
    imgUrl: 'assets/images/cake2.jpg',
    title: 'Vanilla',
    description: '12 ingredients | 40 mins',
  ),
  Cake(
    imgUrl: 'assets/images/cake3.jpg',
    title: 'Dessert',
    description: '12 ingredients | 40 mins',
  ),
];
