part of 'widgets.dart';

AppBar coffeAppBar(IconData icon, VoidCallback callback) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: RichText(
        text: TextSpan(
            text: 'Coffe',
            style: TextStyle(
                color: primaryCoffeColor,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontFamily: 'Lora'),
            children: [
              TextSpan(
                  text: 'house',
                  style: TextStyle(
                    color: secundaryCoffeColor,
                  ))
            ]),
      ),
      leading: GestureDetector(
        onTap: callback,
        child: Icon(
          icon,
          color: primaryCoffeColor,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: coffePadding),
          child: Icon(
            FontAwesomeIcons.shoppingBag,
            color: primaryCoffeColor,
          ),
        )
      ],
    );
