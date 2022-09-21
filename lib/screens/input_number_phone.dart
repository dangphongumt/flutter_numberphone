import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputNumberPhoneScreen extends StatefulWidget {
  const InputNumberPhoneScreen({super.key});

  @override
  State<InputNumberPhoneScreen> createState() => _InputNumberPhoneScreenState();
}

class _InputNumberPhoneScreenState extends State<InputNumberPhoneScreen> {
  TextEditingController numberPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40.0),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 110.0, vertical: 39.0),
                child: Image.asset(
                  'assets/logos/app365.png',
                  width: 155.0,
                  height: 56.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 0.0),
                child: Column(
                  children: [
                    Container(
                      height: 28.0,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Xin chào!",
                        style: TextStyle(
                          // height: 1.2,
                          // fontWeight: FontWeight.bold,
                          fontSize: 23.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Vui lòng nhập số điện thoại của bạn để quản lý Giao dịch Bất động sản hiệu quả hơn!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 26.0, //16 + 10 of Container
                    ),
                    Container(
                      // height: 60.0,
                      //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        border: Border.all(color: Color(0xFF28C1BC)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 3,
                            child: TextButton(
                              onPressed: () => print("TextButton pressed"),
                              child: Row(children: const [
                                Flexible(
                                  flex: 3,
                                  child: Text(
                                    "VN ",
                                    style: TextStyle(
                                      // color: Color(0xFF999999),//icon
                                      color: Color(0xFF616B79),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Text(
                                    "+84  ",
                                    style: TextStyle(
                                      // color: Color(0xFF999999),//icon
                                      color: Color(0xFF616B79),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF999999),
                                    size: 28,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Flexible(
                            flex: 7,
                            child: TextField(
                              controller: numberPhoneController,
                              keyboardType: TextInputType.phone,
                              autofocus: true,
                              decoration: InputDecoration(
                                // labelText: "Label",
                                border: InputBorder.none,
                                // border: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     // width: 1,
                                //     color: Color(0xFF28C1BC),
                                //   ),
                                //   // borderRadius: BorderRadius.circular(20.0),
                                // ),
                                hintText: 'Số điện thoại',

                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     // width: 1,
                                //     color: Color(0xFF28C1BC),
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 182.0,
                    )
                  ],
                ),
              ),
              Container(
                height: 157.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // SizedBox(
                    //   height: 151.0,
                    // ),
                    // Expanded(child: Spacer()),
                    // Spacer(),
                    SizedBox(
                      // padding: EdgeInsets.symmetric(horizontal: 32.0),
                      height: 48,
                      width: 328.7,
                      // alignment: Alignment.bottomCenter,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          print("Value input: ${numberPhoneController.text}");
                        },
                        // child: const Text("Tiếp tục"),
                        icon: Icon(Icons.arrow_circle_right_outlined),
                        label: const Text("Tiếp tục"),
                        style: ElevatedButton.styleFrom(
                            // elevation: 0.9,
                            primary: Colors.grey,
                            minimumSize: Size(311.0, 48.0),
                            textStyle: TextStyle(fontSize: 23)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
