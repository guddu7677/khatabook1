import 'package:flutter/material.dart';
import 'package:khata_books/tabbar/smstabbar/khatabooksms.dart';
import 'package:khata_books/tabbar/smstabbar/smstab.dart';

class SmsSetting extends StatefulWidget {
  const SmsSetting({super.key});

  @override
  State<SmsSetting> createState() => _SmsSettingState();
}

class _SmsSettingState extends State<SmsSetting>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 2, vsync: this); // Define the number of tabs
  }

  @override
  void dispose() {
    tabController
        .dispose(); // Dispose of the tab controller when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "MorePage"); // Navigate back
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "SMS SETTING",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,elevation: 1,shadowColor: Colors.grey,
        child: InkWell(onTap: () {
        },
          child: Container(
            height: 20,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.blue),
            child: Center(child: Text("Save")),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text("Send SMS from:"),
                Icon(
                  Icons.question_mark_sharp,
                  size: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TabBar(
                controller: tabController,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.white54, // Tab indicator color
                  borderRadius: BorderRadius.circular(8),
                ),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center align the contents
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 8),
                        Text("My Number"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center align the contents
                      children: [
                        Icon(Icons.book),
                        SizedBox(width: 8),
                        Text("SMS Book"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Tab content
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // Content for the first tab "My Number"
                mynumber(),
                khata_sms(),
                // Content for the second tab "SMS Book"
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
