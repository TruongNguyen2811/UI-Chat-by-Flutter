import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_chat/models/message.dart';
import 'package:ui_chat/models/user.dart';
import 'package:ui_chat/widgets/TextFieldInput.dart';

class Chat_Screen extends StatefulWidget {
  final User user;

  const Chat_Screen({required this.user});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  buildMessage(message Message, bool isMe) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(minWidth: 0, maxWidth: 300),
          margin: isMe
              ? EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                )
              : EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            // SizedBox(width: 30,);
            color: isMe
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            Message.text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        !isMe
            ? IconButton(
                icon: Message.islike
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                iconSize: 25,
                color: Message.islike
                    ? Colors.red
                    : Theme.of(context).primaryColorDark,
                onPressed: () {},
              )
            : SizedBox.shrink(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.user.avatar),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.user.name,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Active 1m ago",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.local_phone),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 25),
                    itemCount: messages.length,
                    itemBuilder: ((context, index) {
                      final message Message = messages[index];
                      bool isMe = Message.sender.id == truong.id;
                      return buildMessage(Message, isMe);
                    })),
              ),
            ),
          ),
          chatInputField(),
        ],
      ),
    );
  }
}
