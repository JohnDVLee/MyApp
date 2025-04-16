import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Sign In App',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: HomePage(),
        );
    }
}

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Home Page'),
            ),
            body: Center(
                child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                    },
                    child: Text('Sign In'),
                ),
            ),
        );
    }
}

class SignInPage extends StatelessWidget {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Sign In'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                            ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                            ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                            onPressed: () {
                                // Handle sign-in logic here
                                String email = emailController.text;
                                String password = passwordController.text;
                                print('Email: $email, Password: $password');
                            },
                            child: Text('Sign In'),
                        ),
                    ],
                ),
            ),
        );
    }
}