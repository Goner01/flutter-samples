part of 'widgets.dart';

class CallsWhatsApp extends StatelessWidget {
  const CallsWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTitleWsp(
              title: 'Llamadas', subtitle: 'Tienes tres llamadas perdidas'),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: kPaddignWhatsApp / 2),
              children: List.generate(stories.length, (i) {
                final call = stories[i];
                return Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                      vertical: kPaddignWhatsApp * .1),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(call.userImg),
                      ),
                      const SizedBox(
                        width: kPaddignWhatsApp / 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            call.userName,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                  angle: 0.8,
                                  child: Icon(
                                    Icons.arrow_upward_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                              Text(
                                '23 de julio 18:26',
                                style: TextStyle(color: Colors.grey[400]),
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.call,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
