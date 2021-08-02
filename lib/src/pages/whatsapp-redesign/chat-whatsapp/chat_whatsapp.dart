import 'package:flutter/material.dart';

import 'package:github/src/pages/whatsapp-redesign/chat-whatsapp/widgets/widgets.dart';
import 'package:github/src/pages/whatsapp-redesign/whatsapp_model.dart';

class ChatPage extends StatelessWidget {
  final Message message;

  const ChatPage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage('assets/WhatsApp/bg.jpg'), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          children: [
            AppBarChat(
              img: message.img,
              lastConnection: message.time,
              name: message.name,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xff13182C).withOpacity(0.94),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38),
                    )),
                child: ChatWhatsApp(message: message),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


