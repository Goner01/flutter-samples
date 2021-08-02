part of 'widgets.dart';

class InformationPlant extends StatelessWidget {
  final String name;

  const InformationPlant({required this.name});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Color(0xff47435D),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '(Spathiphyllum)',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              CustomIconPlant(
                colorFirst: Colors.black.withOpacity(0.042),
                colorSecond: Colors.white,
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          _IconsListInformation()
        ],
      ),
    );
  }
}

class IconInfo {
  final String info;
  final Icon icon;

  IconInfo({required this.info, required this.icon});
}

class _IconsListInformation extends StatelessWidget {
  final List<IconInfo> iconList = [
    IconInfo(
      info: 'Best in bright',
      icon: Icon(
        Icons.wb_sunny_outlined,
        color: Color(0xff47435D),
        size: 27,
      ),
    ),
    IconInfo(
      info: 'Once a week',
      icon: Icon(
        FontAwesomeIcons.handHoldingWater,
        color: Color(0xff47435D),
        size: 27,
      ),
    ),
    IconInfo(
      info: '19-21°H 6"D',
      icon: Icon(
        FontAwesomeIcons.ruler,
        color: Color(0xff47435D),
        size: 27,
      ),
    ),
    IconInfo(
      info: 'Warm 65-90°F',
      icon: Icon(
        FontAwesomeIcons.thermometerThreeQuarters,
        color: Color(0xff47435D),
        size: 27,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
          iconList.length,
          (i) => Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        iconList[i].icon,
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          iconList[i].info,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    i != iconList.length - 1
                        ? Container(
                            width: 1,
                            height: 18,
                            color: Colors.black12,
                            margin: const EdgeInsets.only(bottom: 12, left: 3),
                          )
                        : Container()
                  ],
                ),
              )),
    );
  }
}
