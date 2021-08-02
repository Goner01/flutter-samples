part of 'widgets.dart';

class ImgAppBar extends StatelessWidget {
  ImgAppBar({Key? key, required this.size, required this.img})
      : super(key: key);

  final Size size;
  final String img;

  final ValueNotifier<int> notifierPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .5,
        child: Stack(
          children: [
            SizedBox(
              height: size.height * .5,
              child: PageView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (val) {
                  notifierPage.value = val;
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    height: size.height * .5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(img), fit: BoxFit.cover)),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 16),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CustomIconPlant(
                      colorFirst: Colors.white.withOpacity(0.8),
                      colorSecond: Colors.black26,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 16),
                  child: CustomIconPlant(
                    colorFirst: Colors.white.withOpacity(0.8),
                    colorSecond: Colors.black26,
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      color: Colors.grey[700]!.withOpacity(.2),
                      child: Container(
                        width: 48,
                        height: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 21),
                child: ValueListenableBuilder(
                    valueListenable: notifierPage,
                    builder: (BuildContext context, value, child) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              3,
                              (i) => Container(
                                    width: 7,
                                    height: 7,
                                    margin: const EdgeInsets.only(
                                        right: 3, top: 5, left: 3),
                                    decoration: BoxDecoration(
                                        color: i == value
                                            ? Colors.white
                                            : Colors.grey[500],
                                        shape: BoxShape.circle),
                                  )));
                    }),
              ),
            )
          ],
        ));
  }
}

class CustomIconPlant extends StatelessWidget {
  final Icon icon;
  final Color colorFirst;
  final Color colorSecond;

  const CustomIconPlant(
      {required this.icon,
      required this.colorFirst,
      required this.colorSecond});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41,
      height: 41,
      decoration: BoxDecoration(
          color: colorFirst, borderRadius: BorderRadius.circular(9)),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.5, vertical: 4.5),
          decoration: BoxDecoration(
            color: colorSecond,
            borderRadius: BorderRadius.circular(8),
          ),
          child: icon),
    );
  }
}
