class Notification {
  Notification({this.name, this.time, this.transaction, this.money, this.date});

  String name, transaction, time, date;
  double money;
}

var notificationDataList = [
  Notification(
      name: "Mohit Mistry",
      time: "10:10 PM",
      transaction: "credit",
      money: 2000,
      date: "18/09/2021"),
  Notification(
      name: "Prashant Prajapati",
      time: "08:00 AM",
      transaction: "debit",
      money: 1000,
      date: "10/09/2021"),
  Notification(
      name: "Harsh Joshi",
      time: "05:12 PM",
      transaction: "credit",
      money: 5000,
      date: "08/09/2021"),
  Notification(
      name: "Mohit Mistry",
      time: "09:50 PM",
      transaction: "debit",
      money: 1000,
      date: "29/08/2021"),
  Notification(
      name: "Prashant Prajapati",
      time: "05:00 PM",
      transaction: "credit",
      money: 3000,
      date: "10/08/2021"),
  Notification(
      name: "Harsh Joshi",
      time: "04:32 PM",
      transaction: "credit",
      money: 500,
      date: "08/08/2021"),
];
