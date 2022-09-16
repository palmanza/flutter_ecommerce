import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/register_form_provider.dart';
import '../ui/input_decorations.dart';
import '../widgets/auth_background.dart';
import '../widgets/card_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              CardContainer(
                  child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Register',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 30),
                  ChangeNotifierProvider(
                    create: (_) => RegisterFormProvider(),
                    child: _RegisterForm(),
                  )
                ],
              )),
              const SizedBox(height: 50),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerForm = Provider.of<RegisterFormProvider>(context);
    return Form(
      key: registerForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            maxLength: 10,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'Josecito', labelText: 'Name', prefixIcon: Icons.abc),
            onChanged: (value) => registerForm.email = value,
            validator: (value) {
              return (value != null && value.length <= 10)
                  ? null
                  : 'Name can only be of 10 characters long';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            maxLength: 5,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'Gomez',
                labelText: 'Lastname',
                prefixIcon: Icons.abc),
            onChanged: (value) => registerForm.email = value,
            validator: (value) {
              return (value != null && value == 'Gomez')
                  ? null
                  : 'Lastname has to be Gomez';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'josecito@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email_rounded),
            onChanged: (value) => registerForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Input email is not a valid email';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
                hintText: '*****',
                labelText: 'Password',
                prefixIcon: Icons.lock_outline),
            onChanged: (value) => registerForm.password = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'Password should have 6 characters or more';
            },
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.deepPurple,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    registerForm.isLoading ? 'Wait' : 'Go back',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () => Navigator.popAndPushNamed(context, 'login'),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.deepPurple,
                onPressed: registerForm.isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();

                        if (!registerForm.isValidForm()) return;

                        registerForm.isLoading = true;

                        await Future.delayed(const Duration(seconds: 2));

                        // TODO: validar si el register es correcto

                        registerForm.isLoading = false;

                        Navigator.pushReplacementNamed(context, 'home');
                      },
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      registerForm.isLoading ? 'Wait' : 'Create Account',
                      style: const TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
