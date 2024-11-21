import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton(
      {super.key,
      required this.iconData,
      required this.Buttontext,
      this.onTapButtton});
  final IconData iconData;
  final String Buttontext;
  final Function()? onTapButtton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onTapButtton,
          child: Container(
            height: 60,
            width: 270,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 88, 159, 119),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 50,
                  decoration: const BoxDecoration(color: Color(0xff4c956c)),
                  child: Icon(
                    iconData,
                    color: Color.fromARGB(255, 247, 248, 251),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    Buttontext,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500),
                                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  final String SaveButtontext;
  final VoidCallback? onSaveButtton;
  const SaveButton(
      {super.key, required this.SaveButtontext, this.onSaveButtton});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onSaveButtton,
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xff588157),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  SaveButtontext,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
