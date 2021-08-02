part of 'widgets.dart';

class ChatWhatsApp extends StatelessWidget {
  const ChatWhatsApp({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 140,
          margin: const EdgeInsets.only(
              top: kPaddignWhatsApp, bottom: kPaddignWhatsApp),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            '2 DE JULIO 2021',
            style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,),
          ),
        ),
        _MessageList(img: message.img),
        ChatInputField()
      ],
    );
  }
}



class _MessageList extends StatelessWidget {
  const _MessageList({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPaddignWhatsApp * .8),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding:
                const EdgeInsets.only(top: kPaddignWhatsApp),
            itemCount: chatMessages.length,
            itemBuilder: (context, i) {
              final chatMessage = chatMessages[i];

              return Row(
                mainAxisAlignment: chatMessage.isSender
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  if (!chatMessage.isSender) ...[
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(
                          img),
                    ),
                    const SizedBox(width: kPaddignWhatsApp / 2),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        MessageWhatsApp(message: chatMessage),
                        const SizedBox(
                          height: kPaddignWhatsApp / 2,
                        ),
                        Text(
                          '8:07',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                  if (chatMessage.isSender) ...[
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: kPaddignWhatsApp),
                          child: MessageWhatsApp(message: chatMessage),
                        ),
                        const SizedBox(
                            height: kPaddignWhatsApp / 2),
                        Row(
                          children: [
                            Text(
                              '8:07',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                            const SizedBox(
                              width: kPaddignWhatsApp / 2,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  "assets/WhatsApp/profile.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ]
                ],
              );
            }),
      ),
    );
  }
}
