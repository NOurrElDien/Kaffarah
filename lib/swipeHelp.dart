class Dish {
  String image;
  String name;
  String price;

  Dish({
    this.image,
    this.name,
    this.price,
  });
}

List<Dish> recommendedDishes = [
  Dish(
    image: 'assets/images/dish1.png',
    name: 'The Oath an..',
    price: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/dish2.png',
    name: 'The Vow',
    price: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/dish3.png',
    name: 'Ebraa AlZem..',
    price: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/dish4.png',
    name: 'The Fasting',
    price: 'Zakat',
  ),
  Dish(
    image: 'assets/images/dish5.png',
    name: 'Al Aqeeqah',
    price: 'kaffarat',
  ),
];

List<Dish> favouriteDishes = [
  Dish(
    image: 'assets/images/meal3.jpg',
    name: 'Fav Meal Number 1',
    price: 'kaffarat',
  ),
  Dish(
    image: 'assets/images/meal2.jpg',
    name: 'Fav Meal Number 2',
    price: 'namaa project',
  ),
  Dish(
    image: 'assets/images/meal1.jpg',
    name: 'Fav Meal Number 3',
    price: 'kaffarat',
  ),
];
