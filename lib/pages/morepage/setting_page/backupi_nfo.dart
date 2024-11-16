import 'package:flutter/material.dart';

class Backup_info extends StatefulWidget {
  const Backup_info({super.key});

  @override
  State<Backup_info> createState() => _Backup_infoState();
}

class _Backup_infoState extends State<Backup_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "MorePage");
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Backup Information",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Yore data is automatically"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
