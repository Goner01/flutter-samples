part of 'widgets.dart';

class GroupsWhatsApp extends StatelessWidget {
  const GroupsWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleWsp(title: 'Grupos', subtitle: '4 grupos creados',),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: kPaddignWhatsApp * 1),
            children: List.generate(groups.length, (i) {
              return _CardGroup(
                index: i,
              );
            }),
          ),
        )
      ],
    );
  }
}

class _CardGroup extends StatelessWidget {
  final int index;

  const _CardGroup({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = groups[index];
    return Container(
      height: 180,
      margin: EdgeInsets.only(top: kPaddignWhatsApp / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(color: Color(0xffF4F4FF), width: 1),
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPaddignWhatsApp / 1.6,
            vertical: kPaddignWhatsApp / 1.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(group.img),
                  radius: 22,
                ),
                const SizedBox(
                  width: kPaddignWhatsApp / 1.8,
                ),
                SizedBox(
                    width: 180,
                    child: Text(
                      group.name,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                )
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    //Spread operator
                    for (var i = 0; i < 4; i++) ...[
                      Container(
                        padding: const EdgeInsets.all(2),
                        margin: EdgeInsets.only(left: (i) * 12),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundColor:
                              i == 3 ? Theme.of(context).primaryColor : null,
                          backgroundImage:
                              i == 3 ? null : AssetImage(group.membersImg[i]),
                          radius: 12,
                          child: i == 3
                              ? Center(
                                  child: Text(
                                    group.membersImg[i],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ),
                    ]
                  ],
                ),
                const SizedBox(
                  width: kPaddignWhatsApp / 2,
                ),
                Text(
                  '${group.members} Participantes',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Container(
              height: 2,
              color: Color(0xffEAEAF0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group.memberLasTMessage,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Text(
                      group.lastMessage,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: Text(
                    group.numberMessages,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
