import 'package:flutter/material.dart';

class MrTipCalculatorUi extends StatefulWidget {
  const MrTipCalculatorUi({super.key});

  @override
  State<MrTipCalculatorUi> createState() => _MrTipCalculatorUiState();
}

class _MrTipCalculatorUiState extends State<MrTipCalculatorUi> {
  bool isClicked = false;
  TextEditingController totalBill = TextEditingController();
  TextEditingController cstmTip = TextEditingController();
  dynamic totalPayPerPerson = "000";
  var selectedPer = 0;
  var totalSplit = 1;
  var totalTip = 00.0;
  var totalPay = 00.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SafeArea(
                child: Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/mr_tip_calculator.png",
                        ),
                        Text(
                          "Mr TIP \nCalculator",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Part 2
              SizedBox(
                child: Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // height: 224,
                    // width: 350,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Total p / person",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "$totalPayPerPerson",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 310,
                          child: Divider(
                            height: 30,
                            thickness: 4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Total bill",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "${totalPay}",
                                    style: TextStyle(
                                      color: Color(0xff02cabd),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Total tip",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "$totalTip",
                                    style: TextStyle(
                                      color: Color(0xff02cabd),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "ENTER",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "bill",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.61,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        onChanged: (value) {
                          calculator();
                        },
                        controller: totalBill,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff02cabd),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          prefix: Icon(Icons.currency_rupee),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff02cabd),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  //  color: Colors.black,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "CHOSE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "your tip",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          selectedPer = 10;
                          isClicked = false;
                          calculator();
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Color(0xff02cabd),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: const Text(
                              "10%",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          selectedPer = 15;
                          isClicked = false;
                          calculator();
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: const Color(0xff02cabd),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: Text(
                              "15%",
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          selectedPer = 20;
                          isClicked = false;
                          calculator();
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Color(0xff02cabd),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: Text(
                              "20%",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 80,
                    ),
                    InkWell(
                      onTap: () {
                        isClicked = true;

                        calculator();
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: Color(0xff02cabd),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: isClicked
                            ? TextField(
                                controller: cstmTip,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Color(0xff02cabd))),
                                    focusColor: Color(0xff02cabd),
                                    prefix: Icon(Icons.percent),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onChanged: (value) {
                                  var cstmmTip =
                                      int.parse(cstmTip.text.toString());
                                  selectedPer = cstmmTip;
                                  calculator();
                                },
                              )
                            : Center(
                                child: Text(
                                  "Custom tip",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Split",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "the total",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: const BoxDecoration(
                            color: Color(0xff02cabd),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (totalSplit >= 0) {
                                totalSplit++;
                              }
                              // setState(() {});
                              calculator();
                            },
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "$totalSplit",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: const BoxDecoration(
                            color: Color(0xff02cabd),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (totalSplit > 1) {
                                totalSplit--;
                              }
                              // setState(() {});
                              calculator();
                            },
                            child: const Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculator() {
    // var ttlBill = int.parse(totalBill.text);

    if (totalBill.text.isNotEmpty) {
      var ttlBill = int.parse(totalBill.text);

      totalTip = ttlBill * selectedPer / 100;
      totalPay = ttlBill + totalTip;

      totalPayPerPerson = totalPay / totalSplit;
      totalPayPerPerson = totalPayPerPerson.toStringAsFixed(2);
    }
    setState(() {});

    // totalTip = ttlBill * selectedPer / 100;
    // totalPay = ttlBill + totalTip;

    // totalPayPerPerson = totalPay / totalSplit;
    // totalPayPerPerson = totalPayPerPerson.toStringAsFixed(2);

    // setState(() {});
  }
}
