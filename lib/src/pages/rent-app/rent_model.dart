class Rent {
  final String title;
  final String location;
  final String description;
  final String bedroom;
  final String bathroom;
  final String price;
  final String distance;
  final String img;

  const Rent(
      {required this.title,
      required this.location,
      required this.description,
      required this.bedroom,
      required this.bathroom,
      required this.price,
      required this.distance, 
      required this.img});
}

const List<Rent> rents = [
  Rent(
      title: 'Dreamsville House',
      location: 'JL. Sultan Iskandar Muda',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '6',
      bathroom: '4',
      price: '3000',
      distance: '1.8 km',
      img: 'assets/RentApp/1.jpg'),
  Rent(
      title: 'Acost House',
      location: 'JL. Cilandak Teng',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '8',
      bathroom: '4',
      price: '3800',
      distance: '2 km',
      img: 'assets/RentApp/2.jpg'),
  Rent(
      title: 'Upper East Side',
      location: 'East 65th Street - Upper East Side',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '6',
      bathroom: '2',
      price: '4000',
      distance: '1.2 km',
      img: 'assets/RentApp/3.jpg'),
  Rent(
      title: 'Fresh Pond',
      location: '47 Big Fresh Pond Road',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '4',
      bathroom: '3',
      price: '4500',
      distance: '3 km',
      img: 'assets/RentApp/4.jpg'),
  Rent(
      title: 'Liberty Luxe',
      location: '200 North End Avenue',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '6',
      bathroom: '4',
      price: '4200',
      distance: '1.8 km',
      img: 'assets/RentApp/5.jpg'),
  Rent(
      title: 'Kips Bay',
      location: '246 East 32nd Street',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      bedroom: '5',
      bathroom: '3',
      price: '3600',
      distance: '0.8 km',
      img: 'assets/RentApp/6.jpg'),
];
