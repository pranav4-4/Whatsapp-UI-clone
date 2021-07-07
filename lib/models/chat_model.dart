class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Pranav Aggarwal",
      message: "Hey everyone",
      time: "15:30",
      avatarUrl:
      null),
  new ChatModel(
      name: "Aryan nath",
      message: "Hey Pranav",
      time: "17:30",
      avatarUrl:
      null),
  new ChatModel(
      name: "Work",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
      "https://ebiopic.com/wp-content/uploads/2020/08/1598373355_pic.jpg"),
  new ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
      "http://sntv24samachar.com/wp-content/uploads/2020/12/dp_image66-1198-1.jpg"),
  new ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl:
      "http://sntv24samachar.com/wp-content/uploads/2020/12/dp_image66-1198-1.jpg"),
  new ChatModel(
      name: "Shivam",
      message: "So how was it then !",
      time: "15:30",
      avatarUrl:
      "http://sntv24samachar.com/wp-content/uploads/2020/12/D20w399.jpg"),
];