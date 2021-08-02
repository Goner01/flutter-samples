part of 'widgets.dart';

class StoriesWhatsApp extends StatelessWidget {
  const StoriesWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShakeTransitionX(
      child: SizedBox(
          height: 94,
          child: ListView.builder(
            itemCount: stories.length,
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: kPaddignWhatsApp),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              final storie = stories[i];
              final storieUser = _Storie(
                storie: storie,
                myStory: i == 0,
              );
              return Padding(
                padding: const EdgeInsets.only(right: kPaddignWhatsApp * .8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: i == 0 ? Colors.transparent : Color(0xff1977F3),
                          width: 2
                        )
                      ),
                      child: storieUser,
                    ),
                    Text(
                      i == 0 ? 'Tu Historia' : storie.userName,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontFamily: 'Hybi11',
                          fontSize: 12),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}

class _Storie extends StatelessWidget {
  final Stories storie;
  final bool myStory;

  const _Storie({Key? key, required this.storie, required this.myStory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(
                storie.imgStorie,
              ),
              fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(1),
        margin: const EdgeInsets.only(left: 22, right: 22, top: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: myStory ? Theme.of(context).primaryColor : Colors.transparent,
          backgroundImage: myStory ? null : AssetImage(storie.userImg),
          // radius: 10,
        ),
      ),
    );
  }
}
