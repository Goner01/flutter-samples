part of 'widgets.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kPaddignWhatsApp,
        vertical: kPaddignWhatsApp / 1.5,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(width: kPaddignWhatsApp / 2),
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddignWhatsApp * 0.75,
              ),
              decoration: BoxDecoration(
                color: Color(0xff383D52),
                borderRadius: BorderRadius.circular(26),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: kPaddignWhatsApp/2, top: kPaddignWhatsApp * .26),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.5),
                  hintText: "Escribe un mensaje",
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: kPaddignWhatsApp),
                    child: Icon(Icons.image_outlined, color: Colors.white),
                  )
                ),
              ),
            ),
          ),
          const SizedBox(width: kPaddignWhatsApp / 3),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white),
          const SizedBox(width: kPaddignWhatsApp / 3),
          Icon(
            Icons.mic_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}