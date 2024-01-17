import 'package:flutter/material.dart';
import 'package:sf_assessment1/starting_screen.dart';

class UserAccount extends StatelessWidget {
  const UserAccount(this.logout, {super.key});
  final void Function() logout;

  void logoutAlert(context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[50],
        context: context,
        builder: (ctx) {
          return Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Do you want to Exit?",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Spacer(),
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
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 30),
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
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                  ],
                )
              ],
            ),
          );
        });
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
