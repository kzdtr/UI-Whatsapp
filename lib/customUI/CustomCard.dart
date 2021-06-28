import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/model/ChatModel.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                chatModel.isGroup
                    ? "assets/icons/gr.svg"
                    : "assets/icons/apa.svg",
                color: Colors.white,
                height: 24,
                width: 24,
              ),
              radius: 30,
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(chatModel.currentMessages,
                    style: TextStyle(color: Colors.black87))
              ],
            ),
            trailing: Text("22:22"),
          ),
        ],
      ),
    );
  }
}
