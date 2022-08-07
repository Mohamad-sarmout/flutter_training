import 'package:flutter/material.dart';
import 'package:bambogeeks/LoginScreen.dart';
import 'package:bambogeeks/RegistrationScreen.dart';
class TabbarWidget extends StatelessWidget {
    int selectedPage;
    TabbarWidget(this.selectedPage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: selectedPage,
        length: 2,
        child: Scaffold(
          appBar:AppBar(
            title: const Text('Tabbar Widget App'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.login),text: "Login"),
                Tab(icon: Icon(Icons.app_registration),text: "Register"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              LoginScreen(),
              RegistrationScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
