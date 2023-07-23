import 'package:appointment_app/components/button.dart';
import 'package:appointment_app/utils/Config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Config.primarycolor,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              labelText: 'Email',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor:Config.primarycolor
            ),
          ),

          Config.spaceSmall,
          TextFormField(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Config.primarycolor,
            obscureText: obsecurePass,
            decoration:  InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor:Config.primarycolor,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecurePass = !obsecurePass;
                    });
                  },
                  icon: obsecurePass?
                  const Icon(Icons.visibility_outlined,
                      color: Colors.black38):
                  const Icon(Icons.visibility_off_outlined,
                      color: Config.primarycolor
                  )
              ),
            ),
          ),
          Config.spaceSmall,

          Button(
              width: double.infinity,
              title: 'Sign In',
              onPressed: () {},
              disable: false,
          )

        ],
      ) ,
    );
  }
}
