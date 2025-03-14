import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  String _errorText = '';
  bool _obscurePassword = true;
  bool _isLoading = false;

  void _signUp() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String name = _nameController.text.trim();
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();
    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      setState(() {
        _errorText =
            'Minimal 8 karakter, kombinasi [A-Z], [a-z], [0-9], [!@#\\\$%^&*(),.?":{}|<>]';
      });
      return;
    }
    // Menguji Debugging
    // print('*** Sign up berhasil!');
    // print('Nama: $name');
    // print('Nama Pengguna: $username');
    // print('Password: $password');

    // Format : prefs.setString(key, value);
    prefs.setString('fulname', name);
    prefs.setString('username', username);
    prefs.setString('password', password);

    Navigator.pushReplacementNamed(context, '/signin');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "Nama",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        errorText: _errorText.isNotEmpty ? _errorText : null,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(_obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                    obscureText: _obscurePassword,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _signUp();
                      },
                      child: Text("Sign Up")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}