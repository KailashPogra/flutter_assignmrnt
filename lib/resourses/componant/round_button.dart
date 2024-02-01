import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final double hight;
  final bool loading;
  final double width;
  final String title;
  final Color color;
  final VoidCallback onPress;

  const RoundButton({
    Key? key,
    required this.hight,
    required this.width,
    required this.title,
    required this.onPress,
    required this.color,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Visibility(
            visible: loading,
            replacement: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 21,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.5,
              ),
            ),
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
