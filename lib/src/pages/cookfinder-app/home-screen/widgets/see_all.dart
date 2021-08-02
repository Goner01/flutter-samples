part of 'widgets.dart';

class SeeAll extends StatelessWidget {
  final VoidCallback callback;

  const SeeAll({
  required this.callback});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 14),
      child: GestureDetector(
        onTap: callback,
        child: Row(
          children: [
            Text(
              'See all',
              style: TextStyle(
                  color: Color(0xffE27F4F),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0xffE27F4F),
            )
          ],
        ),
      ),
    );
  }
}
