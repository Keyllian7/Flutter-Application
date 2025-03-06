import 'package:flutter/material.dart';
import 'package:flutter_application/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network('https://drive.google.com/uc?id=1cqc5VDhQTgKeUv8JD9v3I65rSd3A_rCv'),
                ),
              accountName: Text('Keyllian'),
              accountEmail: Text('key@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Start'),
              subtitle: Text('Home screen'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken),
              title: Text('Tinder'),
              subtitle: Text('Challenge page'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/tinder');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('End the session'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Flutter Application',
          style: TextStyle(color: Colors.white),
        ),
        actions: [ThemeButton()],
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Count: $counter', style: TextStyle(fontSize: 20)),
            Text('Thank you for using our services!'),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 50, width: 50, color: Colors.red),
                Container(height: 50, width: 50, color: Colors.green),
                Container(height: 50, width: 50, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
