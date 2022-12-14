import 'package:bambogeeks/ListViewWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluttor Tutorial App'),
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        ListViewWidget()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        ),
                      ],
                    ),
                    child: const Text('Basic widget app',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                    ],
                  ),
                  child: const Text(
                    "Todolist app",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                    ],
                  ),
                  child: const Text(
                    "World Timer app",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  //  GestureDetector(
                  //   onTap:(){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  //         AlertDialog()));
                  //   },
                  //   child: const Text("Sign Up",
                  //     style: TextStyle(
                  //         color: Colors.redAccent,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 15
                  //     ),),
                  // ),
                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                    ],
                  ),
                  child: const Text(
                    "Chat App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Mohamad Sarmout",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              accountEmail: Text("mohamad.sarmout.9@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 18.0,
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQFjq3_Ci4ubmA/profile-displayphoto-shrink_800_800/0/1647681629110?e=1665619200&v=beta&t=CcLG7E-U3ZAXSXQfmN0DAut5Myj2g61Aq3wQhQWjp98'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQFjq3_Ci4ubmA/profile-displayphoto-shrink_800_800/0/1647681629110?e=1665619200&v=beta&t=CcLG7E-U3ZAXSXQfmN0DAut5Myj2g61Aq3wQhQWjp98'),
                ),
              ],
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Updates'),
              leading: Icon(Icons.update),
            ),
            ListTile(
              title: Text('Community'),
              leading: Icon(Icons.people),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
