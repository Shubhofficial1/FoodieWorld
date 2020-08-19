class Fruits {
  String name;
  String imageUrl;
  int price;
  String description;
  int quantity;

  Fruits({this.name, this.imageUrl, this.price, this.description,this.quantity});
}

List<Fruits> fruits = [
  Fruits(
      name: 'Strawberry',
      imageUrl: 'assets/images/strawberry.jpg',
      price: 9 ,
      quantity: 1,
      description:
      'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries.'),
  Fruits(
      name: 'Orange',
      imageUrl: 'assets/images/orange.jpg',
      price: 30,
      quantity: 1,
      description:
      'Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high.'),
  Fruits(
      name: 'Banana',
      imageUrl: 'assets/images/banana.jpg',
      price: 45,
      quantity: 1,
      description:
      'A banana is a tropical fruit that\'s quite popular all over the world. It grows in bunches on a banana tree.'),
  Fruits(
      name: 'Citrus',
      imageUrl: 'assets/images/citrus.jpg',
      price: 10,
      quantity: 1,
      description:
      'Citrus is a genus of flowering trees and shrubs in the rue family, Rutaceae.'),
  Fruits(
      name: 'Apple',
      imageUrl: 'assets/images/apple.jpg',
      price: 40,
      quantity: 1,
      description:
          'The apple is a pome fruit, in which the ripened ovary and surrounding tissue both become fleshy and edible.'),

 Fruits(
      name: 'Avacado',
      imageUrl: 'assets/images/avocado.jpg',
      price: 25,
      quantity: 1,
      description:
          'Avocado  is a large, fleshy, pear-shaped fruit with a single large seed.'),

];
