part of 'widgets.dart';

class MessagesWhatsApp extends StatelessWidget {
  const MessagesWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleWsp(title: 'Mensajes', subtitle: 'Tienes dos nuevos mensajes'),
              _Messages(size: size)
            ],
    );
  }
}

class _Messages extends StatelessWidget {
  const _Messages({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: kPaddignWhatsApp * 1.5),
      children: List.generate(messages.length, (i) {
        final message = messages[i];
        return GestureDetector(
          onTap: () => Navigator.push(context, createRouteTransition(ChatPage(message: message))),
          child: Container(
            height: 60,
            width: size.width,
            margin:
                EdgeInsets.only(top: 0 == i ? 0.0 : kPaddignWhatsApp),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                message.img,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    message.isConnected ? Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 12,
                        width: 12,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
                const SizedBox(
                  width: kPaddignWhatsApp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .62,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            message.name,
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            message.time,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: size.width * .62,
                      child: Text(
                        message.message,
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    ));
  }
}
