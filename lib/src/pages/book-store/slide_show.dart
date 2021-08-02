import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github/src/pages/book-store/book-store/book_store.dart';
import 'package:github/src/utils/transition_page.dart';

class SlideShowBook extends StatefulWidget {
  @override
  _SlideShowBookState createState() => _SlideShowBookState();
}

class _SlideShowBookState extends State<SlideShowBook> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: size.height * .8,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    _ContentSlide(size: size),
                    _ContentSlide(size: size),
                    _ContentSlide(size: size),
                  ],
                ),
              ),
              // indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _numPages,
                    (i) => i == _currentPage
                        ? _Indicator(
                            isActive: true,
                          )
                        : _Indicator(isActive: false)),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    _ButtonsSlide(text: 'Skip', callback: () => Navigator.push(context, createRouteFade(ruta: BookStorePage()))),
                    Spacer(),
                    _currentPage != _numPages - 1
                        ? _ButtonsSlide(
                            text: 'Next',
                            callback: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                          )
                        : _ButtonsSlide(
                            text: 'Get Started',
                            callback: () => Navigator.push(context, createRouteFade(ruta: BookStorePage())),
                            colorText: Color(0xff45AE9F),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonsSlide extends StatelessWidget {
  const _ButtonsSlide(
      {Key? key,
      required this.text,
      required this.callback,
      this.colorText = Colors.grey})
      : super(key: key);

  final String text;
  final Color colorText;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(color: colorText, fontSize: 20),
      ),
    );
  }
}

class _ContentSlide extends StatelessWidget {
  const _ContentSlide({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: size.height * .02,
          child: Image(
            image: AssetImage(
              'assets/BookStoreApp/onboardin.png',
            ),
            height: size.height * .6,
            width: size.width,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: size.height * .03,
          height: size.height * .2,
          width: size.width * .94,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      text: 'Personal',
                      style: TextStyle(
                          color: Color(0xff45AE9F),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: ' library',
                            style: TextStyle(color: Colors.black54))
                      ]),
                ),
                SizedBox(height: 15.0),
                Text(
                  'All the books that you purchase will remain forever in your personal library, which can be accessed from any device.',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  final bool isActive;

  const _Indicator({Key? key, required this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: BoxDecoration(
        color:
            isActive ? Color(0xff45AE9F) : Color(0xff45AE9F).withOpacity(0.4),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
