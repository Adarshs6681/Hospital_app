import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_5/pages/profile_page.dart';

class AppointmentHistory extends StatefulWidget {
  const AppointmentHistory({super.key});

  @override
  State<AppointmentHistory> createState() => _AppointmentHistoryState();
}

class _AppointmentHistoryState extends State<AppointmentHistory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 30, 193),
        title: Text("Appointment History",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        
          margin: EdgeInsets.only(top: 0),
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                    child: Text(
                      'Upcomming Appointment',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
            
      
            Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 29, 139),
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              
              child: Container(
                height: 107,
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        "assets/images/dr_1.jpg",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Dr. Fred Mask',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text('Heart surgen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text('Rating: 4.5',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Appointment Date',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  ),
                ),
              ), 
              Container(
              margin: EdgeInsets.only(left: 0, top: 40, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "21", true),
                  demoDates("Tue", "22", false),
                  demoDates("Wed", "23", false),
                  demoDates("Thur", "24", false),
                  demoDates("Fri", "25", false),
                  demoDates("Sat", "26", false),
                  demoDates("Sun", "27", false),
                  demoDates("Mon", "28", false),
                ],
              ),
             ),
             Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Booking Date',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  ),
                ),
              ), 
              Container(
                margin: EdgeInsets.only(top: 40), 
                height: 107,
                 width: double.infinity,
                 padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 198, 29, 139),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12))
              ),
                
                
                child: Text(
                  DateTime.now().toString(),   
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white
                  ),
                ),
              ),
              
              ElevatedButton(
                
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()),);
                },
                child: Text("Back",style: TextStyle(fontSize: 20, color: Colors.white,),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
                ),
                )
            ]
           ),
         ),  
        );
      }
       Widget demoDates(String day, String date, bool isSelected) {
    return isSelected ? Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ) : Container(
          width: 70,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  day,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(7),
                child: Text(
                  date,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }