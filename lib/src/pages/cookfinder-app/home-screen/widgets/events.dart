part of 'widgets.dart';

class Events extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: 'Wine Tasting',
        location: '3 Avenue Villermout, Nice',
        time: '7:30 PM - 9:00 PM',
        img: 'assets/CookFinderApp/event1.jpg'),
    Event(
        name: 'Sushi Tasting',
        location: '3 Avenue Villermout, Nice',
        time: '5:00 PM - 7:00 PM',
        img: 'assets/CookFinderApp/event2.jpg'),
    Event(
        name: 'Pasta Tasting',
        location: '3 Avenue Villermout, Nice',
        time: '9:30 PM - 11:00 PM',
        img: 'assets/CookFinderApp/event3.jpg'),
    Event(
        name: 'Chicken Tasting',
        location: '3 Avenue Villermout, Nice',
        time: '09:30 AM - 11:30 AM',
        img: 'assets/CookFinderApp/event4.jpg'),
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text('Events',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 14),
            children: List.generate(
                events.length,
                (i) => Container(
                      width: 230,
                      height: 210,
                      margin: EdgeInsets.only(bottom: 16, right: 20),
                      child: Stack(
                        children: [
                          Container(
                            width: 230,
                            height: 210,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 1),
                                      blurRadius: 6)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    child: Image.asset(
                                      events[i].img,
                                      fit: BoxFit.cover,
                                      height: 110,
                                      width: 230,
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, left: 14),
                                  child: Text(
                                    events[i].name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                _InfoEvent(
                                  info: events[i].location,
                                  iconData: Icons.location_on_outlined,
                                ),
                                _InfoEvent(
                                  info: events[i].time,
                                  iconData: Icons.calendar_today_outlined,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 46,
                              width: 46,
                              margin: const EdgeInsets.only(right: 14, top: 16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 1),
                                        blurRadius: 6)
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '02',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8C6BC4)),
                                  ),
                                  Text(
                                    'June',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ),
        SeeAll(callback: () => print('events'),),
        const SizedBox(
          height: 90,
        )
      ],
    );
  }
}

class _InfoEvent extends StatelessWidget {
  final IconData iconData;
  final String info;

  const _InfoEvent({required this.iconData, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, bottom: 3),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 18,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            info,
            style: TextStyle(color: Colors.grey, fontSize: 12.5),
          )
        ],
      ),
    );
  }
}

class Event {
  final String name;
  final String location;
  final String time;
  final String img;

  Event({required this.name, required this.location, required this.time, required this.img});
}
