import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout(this.logout, {super.key});
  final void Function() logout;

  void logoutAlert(context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.warning, color: Colors.red),
            SizedBox(width: 5),
            Text(
              "Warning!",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        content: const Text(
          "Do you really want to logout?",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          // const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          // const SizedBox(width: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
              logout();
            },
            child: const Text(
              "Yes",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }

  @override
  Widget build(context) {
    return Center(
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(foregroundColor: Colors.deepPurpleAccent),
        onPressed: () {
          logoutAlert(context);
        },
        child: const Text(
          "Log Out",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// class UserAccount extends StatefulWidget
// {
//   @override
//   State<StatefulWidget> createState() {
//     return 
//   }
// }
