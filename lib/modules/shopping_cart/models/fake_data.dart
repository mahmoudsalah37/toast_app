class FakeDataDriverOffer {
  final String img;
  final String driverName;
  final String driverRate;
  final String driverDeliveryOffer;
  final String driverDeliveryDistance;
  final String driverDeliveryTime;

  FakeDataDriverOffer({
    required this.img,
    required this.driverName,
    required this.driverRate,
    required this.driverDeliveryOffer,
    required this.driverDeliveryDistance,
    required this.driverDeliveryTime,
  });
}

 List<FakeDataDriverOffer> driverOfferList = [
  FakeDataDriverOffer(
    img: 'assets/test/driver1.jpeg',
    driverName: 'ahmed mohamed',
    driverRate: '5',
    driverDeliveryOffer: '40',
    driverDeliveryDistance: '15',
    driverDeliveryTime: '13',
  ),
  FakeDataDriverOffer(
    img: 'assets/test/driver2.jpeg',
    driverName: 'Gamal ahmed',
    driverRate: '2.7',
    driverDeliveryOffer: '50',
    driverDeliveryDistance: '13',
    driverDeliveryTime: '15',
  ),
  FakeDataDriverOffer(
    img: 'assets/test/driver3.jpeg',
    driverName: 'Eslam Nasser',
    driverRate: '4.2',
    driverDeliveryOffer: '45',
    driverDeliveryDistance: '20',
    driverDeliveryTime: '12',
  ),
  FakeDataDriverOffer(
    img: 'assets/test/driver4.jpeg',
    driverName: 'Husien salem',
    driverRate: '3.5',
    driverDeliveryOffer: '30',
    driverDeliveryDistance: '10',
    driverDeliveryTime: '9',
  ),
];
