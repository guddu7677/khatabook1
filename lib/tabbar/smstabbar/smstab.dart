import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mynumber extends StatefulWidget {
  const mynumber({super.key});

  @override
  State<mynumber> createState() => _mynumberState();
}

class _mynumberState extends State<mynumber> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.sim_card_outlined,color: Colors.black,),
                          Text("Select simcard for SMS",),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Default",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Benefits:",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [Icon(Icons.check_circle,color: Colors.blue,size: 16,),
                  SizedBox(width: 8,),
                  Expanded(child: Text("SMS automatically send with each entry"))
                  ],
                ),
              ),  
            SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.check_circle,color: Colors.blue,size: 16,),
                  SizedBox(width: 8,),
                  Expanded(child: Text("Customer receives SMS from your trusted number"))
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [Icon(Icons.check_circle,color: Colors.blue,size: 16,),
                  SizedBox(width: 8,),
                  Expanded(child: Text("SMS automatically send with each entry"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
