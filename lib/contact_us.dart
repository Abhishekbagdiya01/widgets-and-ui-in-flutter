import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 255, 244, 223),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: SafeArea(
                  child: Text(
                    "Get in touch !",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                "Contact us for a quote",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 100, 147, 153)),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 30,
                          color: Color.fromARGB(255, 92, 40, 235),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "9297 Polly Parkway",
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 40, 235),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                          color: Color.fromARGB(255, 92, 40, 235),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "9079481268",
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 40, 235),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.mail,
                          size: 30,
                          color: Color.fromARGB(255, 92, 40, 235),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "abc@gmail.com",
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 40, 235),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Text(
                        "Mail",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.mail),
                          ),
                        ),
                      ),
                      Text(
                        "Phone No.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.phone),
                          ),
                        ),
                      ),
                      Text(
                        "Message",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          minLines: 1,
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintText: "Type",
                            icon: Icon(Icons.message),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 92, 40, 235),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Send Message",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
