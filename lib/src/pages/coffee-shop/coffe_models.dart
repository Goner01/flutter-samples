class Coffe {
  final String name;
  final String type;
  final String price;
  final String img;

  const Coffe(
      {required this.name,
      required this.type,
      required this.price,
      required this.img});
}

const List<Coffe> coffeList = [
  Coffe(name: 'Expresso Cappuccino', type: 'Dark Roast', price: '68', img: 'assets/CoffeShop/1.png'),
  Coffe(name: 'Caffe Mocha Americano', type: 'Decaf Pike', price: '48', img: 'assets/CoffeShop/2.png'),
  Coffe(name: 'Macchiato', type: 'Dark Roast', price: '42', img: 'assets/CoffeShop/3.png'),
  Coffe(name: 'Coffe Amaretto', type: 'Decaf Pike', price: '52', img: 'assets/CoffeShop/4.png'),
  Coffe(name: 'Mocha', type: 'Dark Roast', price: '38', img: 'assets/CoffeShop/5.png'),
];

const coffeCategories = [
  'All',
  'Cappuccino',
  'Americano',
  'Latte',
  'Moca ',
  'Caramelo'
];
