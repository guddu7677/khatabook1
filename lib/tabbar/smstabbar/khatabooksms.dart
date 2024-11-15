import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class khata_sms extends StatefulWidget {
  const khata_sms({super.key});

  @override
  State<khata_sms> createState() => _khata_smsState();
}

class _khata_smsState extends State<khata_sms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.sms_rounded),
                        Text("Free sms limit"),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child: Text("you can use khatabook coins to send sms after the montholy sms limit is crossed")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
