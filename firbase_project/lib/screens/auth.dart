import 'package:flutter/material.dart';

class EmailAuthPage extends StatefulWidget {
  const EmailAuthPage({super.key});

  @override
  _EmailAuthPageState createState() => _EmailAuthPageState();
}

final _formKey = GlobalKey<FormState>();
var signInStatus = true;
// ignore: unused_element
var _email = '';
// ignore: unused_element
var _password = '';

void _submit() {  
  final _isValid = _formKey.currentState!.validate();
  if (_isValid) {
    _formKey.currentState!.save();
  }
}

class _EmailAuthPageState extends State<EmailAuthPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (newValue) => _email = newValue!,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    onSaved: (newValue) => _password = newValue!,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.length < 6 ||
                          value.trim().isEmpty) {
                        return 'Please enter a password with at least 6 characters';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _submit,
                    child: Text(signInStatus ? 'Sign In' : 'Sign Up'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        signInStatus = !signInStatus;
                      });
                    },
                    child: Text(signInStatus
                        ? 'Don\'t have an account? Sign Up'
                        : 'Already have an account? Sign In'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
