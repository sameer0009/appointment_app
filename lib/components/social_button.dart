import 'package:appointment_app/utils/Config.dart';
import 'package:flutter/material.dart';

class SocailButton extends StatelessWidget {
  const SocailButton({super.key, required this.socail});

  final String socail;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        side: const BorderSide(width: 1, color: Colors.black),
      ),
        onPressed:() {},
        child: SizedBox(
          width: Config.widthSize * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              Image.asset('assests/$socail.png' ,
              width:40,
                height: 40,
              ),
              Text(
                socail.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                ) ,
              )
            ],
          ),
        ),
    );
  }
}
