part of 'widgets.dart';

class MessageWhatsApp extends StatelessWidget {
  const MessageWhatsApp({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      alignment:
          message.isSender ? Alignment.centerRight : Alignment.centerLeft,
      width: size.width * 0.62,
      padding: EdgeInsets.symmetric(
        horizontal: kPaddignWhatsApp * 0.75,
        vertical: kPaddignWhatsApp / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: message.isSender
            ? LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffAE4F4F), Color(0xff283053)])
            : null,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: message.isSender ? Radius.zero : Radius.circular(10),
            bottomLeft: !message.isSender ? Radius.zero : Radius.circular(10)),
      ),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender ? Colors.white : Colors.black,
            fontSize: 13.5),
      ),
    );
  }
}

