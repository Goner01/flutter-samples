part of 'widgets.dart';

Future buildShowDialog(BuildContext context) async {
  final size = MediaQuery.of(context).size;
  return showDialog(
      context: context,
      builder: (context) => TweenAnimationBuilder<double>(
            duration: Duration(milliseconds: 250),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, double value, child) {
              return AnimatedOpacity(
                opacity: value,
                duration: Duration(milliseconds: 250),
                child: Dialog(
                  child: Container(
                    padding: EdgeInsets.all(kPaddignWhatsApp),
                    color: Colors.transparent,
                    width: size.width * 0.94,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'WhatsApp Options',
                          style: TextStyle(
                              color: Color(0xff222E4E),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _ItemWhatsappOptions(
                              title: 'Nuevo Chat',
                              icon: Icons.message_rounded,
                              callback: () => print('nuevo chat'),
                            ),
                            _ItemWhatsappOptions(
                              title: 'Nuevo Grupo',
                              icon: Icons.group_add,
                              callback: () => print('nuevo grupo'),
                            ),
                            _ItemWhatsappOptions(
                              title: 'Subir Historia',
                              icon: Icons.history_rounded,
                              callback: () => print('subir historia'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  insetPadding: EdgeInsets.only(
                      left: 0,
                      right: 0,
                      top: size.height * 0.66,
                      bottom: size.height * 0.05),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  backgroundColor: Colors.white.withOpacity(.9),
                ),
              );
            }, 
          ));
}

class _ItemWhatsappOptions extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback callback;

  const _ItemWhatsappOptions(
      {Key? key,
      required this.title,
      required this.icon,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: callback,
          child: Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: kPaddignWhatsApp / 2,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 13,
              color: Color(0xff222E4E),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
