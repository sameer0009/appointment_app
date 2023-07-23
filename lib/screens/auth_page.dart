import 'package:appointment_app/components/login_form.dart';
import 'package:appointment_app/components/social_button.dart';
import 'package:appointment_app/utils/text.dart';
import 'package:flutter/material.dart';

import '../utils/Config.dart';
    
    class AuthPage extends StatefulWidget {
      const AuthPage({super.key});

      @override
      State<AuthPage> createState() => _AuthPageState();
    }
    
    class _AuthPageState extends State<AuthPage> {
      @override
      Widget build(BuildContext context) {
        Config().init(context);
       return Scaffold(
         body: Padding(
           padding: const EdgeInsets.symmetric(
             horizontal: 15,
             vertical: 15,
           ),
           child: SafeArea(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text(
                   AppText.enText['Welcome_Text']!,
                   style: const TextStyle(
                     fontSize: 36,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 Config.spaceSmall,
                 Text(AppText.enText['SignIn_Text']!,
                   style: const TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 Config.spaceSmall,
                 const LoginForm(),
                 Config.spaceSmall,
                 Center(
                   child: TextButton(
                     onPressed: (){},
                     child: Text(AppText.enText['forgot-password']!,
                       style: const TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       ),
                     ),
                   ),
                 ),
                 const Spacer(),
                 Center(
                   child: Text(AppText.enText['Social-Login']!,
                     style:  TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.normal,
                       color: Colors.grey.shade500,
                     ),
                   ),
                 ),
                 Config.spaceSmall,
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                   children: <Widget>[
                     SocailButton(socail:'google' ),
                     SocailButton(socail:'facebook' ),

                   ],
                 ),
                 Config.spaceSmall,
               ],

             ),
           ),
         )

       );
      }
    }
    