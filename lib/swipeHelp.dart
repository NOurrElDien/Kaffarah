class Dish {
  String image;
  String name;
  String category;

  Dish({
    this.image,
    this.name,
    this.category,
  });
}

List<Dish> recommendedDishes = [
  Dish(
    image: 'assets/images/kaffara1.png',
    name: 'The Oath an..',
    category: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/kaffara2.png',
    name: 'The Vow',
    category: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/kaffara3.png',
    name: 'Ebraa AlZem..',
    category: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/kaffara4.png',
    name: 'The Fasting',
    category: 'Zakat',
  ),
  Dish(
    image: 'assets/images/kaffara5.png',
    name: 'Al Aqeeqah',
    category: 'kaffarat',
  ),
];

