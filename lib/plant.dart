class Plant {
  String title;
  int waterNeeds;
  String desc;
  String link;
  String image;

  Plant({
    required this.title,
    required this.waterNeeds,
    required this.desc,
    required this.link,
    required this.image
});
}
final plantList = [
  Plant(title: 'Avacado', waterNeeds: 3, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Avocado", image: 'https://snaped.fns.usda.gov/sites/default/files/seasonal-produce/2018-05/avocado.jpg'),
  Plant(title: 'Rose', waterNeeds: 3, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Rose", image: 'https://m.media-amazon.com/images/I/61ks-gDrhxL._AC_SL1000_.jpg'),
  Plant(title: 'Cherry', waterNeeds: 20, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Cherry", image: 'https://healthwire.pk/wp-content/uploads/2022/07/benefits-of-cherry.jpg'),
  Plant(title: 'Apricot', waterNeeds: 133, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Apricot", image: 'https://www.verywellhealth.com/thmb/vWkXfYJq9g6ke7l5qNLEhIPVJg8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1263892776-50814f7627d543c7a109ea1efdc71f93.jpg'),
  Plant(title: 'Melon', waterNeeds: 33, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Melon", image: 'https://fisherscart.com/cdn/shop/products/Melon.png?v=1646629090'),
  Plant(title: 'Tomato', waterNeeds: 5, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Tomato", image: 'https://www.kagomeindia.com/wp-content/uploads/top-view-ripe-fresh-tomatoes-with-water-drops-black-background-scaled.jpg'),
  Plant(title: 'Bean', waterNeeds: 12, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Bean", image: 'https://images.everydayhealth.com/images/diet-nutrition/potential-health-benefits-of-green-beans-1440x810.jpg'),
  Plant(title: 'Calatheas', waterNeeds: 45, desc: "Lorem ipsum doler", link: "https://en.wikipedia.org/wiki/Calatheas", image: 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/beauty-star-calathea-calathea-ornata-pinstripe-calathea-proven-winners_17336.jpg')
];