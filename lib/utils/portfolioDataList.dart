class Portfolio {
  Portfolio(
      {this.imgUrl,
      this.name,
      this.grothPercentage,
      this.isGrow,
      this.price,
      this.fullName,
      this.popularPrice});

  String imgUrl, name, price, grothPercentage, fullName, popularPrice;
  bool isGrow;
}

var portfolioDataList = [
  Portfolio(
      imgUrl:
          "https://cdn.freebiesupply.com/logos/large/2x/bitcoin-logo-png-transparent.png",
      name: "BTC",
      fullName: "Bitcoin",
      price: "₹ 1,45,250",
      popularPrice: "₹ 10,136.73",
      isGrow: true,
      grothPercentage: "+20%"),
  Portfolio(
      imgUrl:
          "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Ethereum-ETH-icon.png",
      name: "ETH",
      fullName: "Ethereum",
      price: "₹ 2,50,245",
      popularPrice: "₹ 185.65",
      isGrow: true,
      grothPercentage: "+12%"),
];
