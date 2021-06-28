import 'package:flutter/material.dart';
import 'package:whatsapp/customUI/CustomCard.dart';
import 'package:whatsapp/model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Nadine",
        isGroup: false,
        currentMessages: "Gimana kabarnya?",
        time: "22:22",
        icon: "person.svg"),
    ChatModel(
        name: "BEM 18'",
        isGroup: true,
        currentMessages: "Waalaikumsalam,sore",
        time: "17:00",
        icon: "person.svg"),
    ChatModel(
        name: "Fahry",
        isGroup: false,
        currentMessages: "Jadi besok, gasin kuy",
        time: "19:30",
        icon: "person.svg"),
    ChatModel(
        name: "Elyas",
        isGroup: false,
        currentMessages: "Gambar punya google semua",
        time: "19:33",
        icon: "person.svg"),
    ChatModel(
        name: "Bintang",
        isGroup: false,
        currentMessages: "okedeh, makasiii",
        time: "19:01",
        icon: "person.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
