import 'package:ui_chat/models/user.dart';

class message {
  final User sender;
  final String time;
  final String text;
  final bool unread;
  final bool islike;

  message({
    required this.sender,
    required this.time,
    required this.text,
    required this.islike,
    required this.unread,
  });
}

final User truong = User(
  avatar: "assets/images/TruongNguyen.jpg",
  id: 01,
  name: "Truong Nguyen",
);

final User James =
    User(avatar: "assets/images/James.jpg", id: 02, name: "James");

final User Reus =
    User(avatar: "assets/images/Reus.jpg", id: 03, name: "Marco Reus");

final User Khoa = User(avatar: "assets/images/4.jpg", id: 04, name: "Khoa");

final User Hoa = User(avatar: "assets/images/5.jpg", id: 05, name: "Hoa");

final User Hieu = User(avatar: "assets/images/6.jpg", id: 06, name: "Hieu");

final User Dat = User(avatar: "assets/images/7.jpg", id: 07, name: "Dat");

final User Duc = User(avatar: "assets/images/8.jpg", id: 08, name: "Duc");

final User My = User(avatar: "assets/images/9.jpg", id: 09, name: "My");

List<User> Favorite = [Reus, Hieu, Dat, Duc, My];
