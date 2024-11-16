import 'package:flutter/material.dart';
import 'package:khata_books/pages/morepage/setting_page/payment_setting.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  Language _selectedDropdownLanguage = Languages.english;
  Language _selectedDialogLanguage = Languages.english;
  Language _selectedCupertinoLanguage = Languages.english;
  bool _customicon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.book_online,
          color: Colors.white,
        ),
        title: Row(
          children: [
            Text(
              "guddug",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                            child: Text(
                          "G",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Guddug",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              "gggg",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Book_Profile");
                    },
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text("Edit"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 10,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Profile strenth :"),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Weak",
                        style: TextStyle(color: Colors.red.shade600),
                      ),
                    ],
                  ),
                  Text(
                    "29%",
                    style: TextStyle(color: Colors.red.shade600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.library_books_outlined),
                          ),
                        ),
                        Text("Cashback")
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.person_add_alt),
                          ),
                        ),
                        Text("Staff")
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.amber.shade200,
                            radius: 30,
                            child: Icon(
                              Icons.card_membership,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4, left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child: Text("Bussiness card ")),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.amber.shade200,
                            radius: 30,
                            child: Icon(
                              Icons.card_membership,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4, left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child: Text("Bussiness Stump ")),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity, // Remove fixed height, only keep width
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ],
              ),
              child: ExpansionTile(
                iconColor: Colors.blue,
                textColor: Colors.blue,
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(
                  _customicon
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "SmsSetting");
                    },
                    child: ListTile(
                      title: Text("SMS Setting"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          )),
                          builder: ((context) {
                            return PaySetting();
                          })); // Edit ac
                    },
                    child: ListTile(
                      title: Text("Payment Setting"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "RecycleBin");
                    },
                    child: ListTile(
                      title: Text("Recycle Bin"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("App Lock"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _selectLanguage();
                    },
                    child: ListTile(
                      title: Text("Language"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Backupinfo");
                    },
                    child: ListTile(
                      title: Text("Backup Information"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "DeleteKhata");
                    },
                    child: ListTile(
                      title: Text("Delete Khata"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("App Update"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() => _customicon = expanded);
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity, // Remove fixed height, only keep width
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ],
              ),
              child: ExpansionTile(
                iconColor: Colors.blue,
                textColor: Colors.blue,
                leading: Icon(Icons.help_center),
                title: Text(
                  "Help & Support",
                ),
                trailing: Icon(
                  _customicon
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "FAQs");
                    },
                    child: ListTile(
                      title: Text("FAQs"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("Help on Whatsapp"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("Call Us"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() => _customicon = expanded);
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity, // Remove fixed height, only keep width
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ],
              ),
              child: ExpansionTile(
                iconColor: Colors.blue,
                textColor: Colors.blue,
                leading: Icon(Icons.settings),
                title: Text("About Us"),
                trailing: Icon(
                  _customicon
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                children: [
                  ListTile(
                    title: Text("About Khatabook"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("Privacy Policy"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  ListTile(
                    title: Text("Tearm & Conditions"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() => _customicon = expanded);
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Center(child: Text("Invite Friend")),
            )
          ],
        ),
      ),
    );
  }

  _selectLanguage() {
    return showDialog(
      context: context,
      builder: (context) {
        return LanguagePickerDialog(
          title: Text("Select your Language"),
          onValuePicked: (Language language) {
            // Update locale based on selected language
            setState(() {
              if (language.isoCode == 'en') {
                var _locale = Locale('en', '');
              } else if (language.isoCode == 'es') {
                var _locale = Locale('es', '');
              }
              // Add more languages as needed
            });
          },
        );
      },
    );
  }
}
