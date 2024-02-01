import 'package:assignment/resourses/componant/colors/app_colors.dart';
import 'package:assignment/resourses/componant/my_textfield.dart';
import 'package:assignment/resourses/componant/round_button.dart';
import 'package:assignment/view_model/passanger_info_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PassangerInfoScreen extends StatelessWidget {
  const PassangerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // Access the provider and retrieve the value
    final passangerInfoModel =
        Provider.of<PassangerInfoModel>(context, listen: false);

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // top of the screen
            Padding(
              padding: EdgeInsets.only(
                  top: height / 12.8,
                  left: width / 9.5,
                  right: width / 13,
                  bottom: height / 122),
              child: Row(
                children: [
                  Container(
                    width: width / 9,
                    height: height / 18.5,
                    decoration: ShapeDecoration(
                      color: AppColor.greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height / 83),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/passengar_screen_assets/passengar.png",
                        height: width / 14,
                        width: width / 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width / 100, right: width / 100),
                      child: Image.asset(
                        "assets/passengar_screen_assets/Line.png",
                        height: width / 14,
                        width: width / 14,
                      ),
                    ),
                  ),
                  Container(
                    width: width / 9,
                    height: height / 18.5,
                    decoration: ShapeDecoration(
                      color: AppColor.milkColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: AppColor.greenColor),
                        borderRadius: BorderRadius.circular(height / 83),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                          "assets/passengar_screen_assets/payment.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width / 20, right: width / 12.9, bottom: height / 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Passenger  Details',
                    style: TextStyle(
                      color: AppColor.greenColor,
                      fontSize: width / 35.8,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width / 35.8,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),

            // contact number widgrt start from here
            Padding(
              padding: EdgeInsets.only(bottom: height / 70),
              child: Container(
                width: width / 1.07,
                height: height / 5.6,
                decoration: ShapeDecoration(
                  color: AppColor.grayColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: height / 50,
                          left: width / 20,
                          right: width / 1.91,
                          bottom: height / 77.5),
                      child: Text(
                        'Contact  Number -',
                        style: TextStyle(
                          color: AppColor.greenColor,
                          fontSize: width / 26.87,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        // Wrap the Radio widgets with Consumer
                        Padding(
                          padding: EdgeInsets.only(right: width / 17),
                          child: Consumer<PassangerInfoModel>(
                            builder: (context, Value, child) {
                              return Radio(
                                activeColor: Colors.green,
                                value: "my self",
                                groupValue: Value.radioButton,
                                onChanged: (value) {
                                  Value.radioLisner(value.toString());
                                },
                              );
                            },
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: width / 10),
                          child: Image.asset(
                              "assets/passengar_screen_assets/green_passanger.png"),
                        ),
                        Text(
                          'My Self',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width / 26.87,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width / 17),
                          child: Consumer<PassangerInfoModel>(
                            builder: (context, Value, child) {
                              return Radio(
                                activeColor: Colors.green,
                                value: "For Others",
                                groupValue: Value.radioButton,
                                onChanged: (value) {
                                  Value.radioLisner(value.toString());
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: width / 10,
                              bottom: height / 59,
                              top: height / 200),
                          child: Image.asset(
                              "assets/passengar_screen_assets/green2_passanger.png"),
                        ),
                        Text(
                          'For Others',
                          style: TextStyle(
                            color: AppColor.redColor,
                            fontSize: width / 26.87,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // pickup details widget start from here
            Container(
              width: width / 1.07,
              height: height / 1.884,
              decoration: ShapeDecoration(
                color: AppColor.grayColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height / 50,
                      left: width / 20,
                      right: width / 1.91,
                      bottom: height / 77.5),
                  child: Text(
                    'Pickup Details -',
                    style: TextStyle(
                      color: AppColor.greenColor,
                      fontSize: width / 26.87,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width / 15.9,
                    right: width / 25.2,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height / 40, bottom: height / 57),
                        child: MyTextField(
                          labelText: 'Passenger Name ',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: height / 57),
                        child: MyTextField(
                          labelText: 'Mobile Number',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: height / 57),
                        child: MyTextField(
                          labelText: 'Pick Up Address',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: height / 57),
                        child: MyTextField(
                          labelText: 'Comment if Any Instruction for driver ',
                        ),
                      ),
                      Row(
                        children: [
                          Consumer<PassangerInfoModel>(
                            builder: (BuildContext context,
                                PassangerInfoModel value, Widget? chid) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: height / 85),
                                child: Checkbox(
                                  value: passangerInfoModel.gstCheckBox,
                                  onChanged: (value) {
                                    passangerInfoModel
                                        .gstCheckBoxListener(value!);
                                  },
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 10),
                            child: Text(
                              'GST',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.greenColor,
                                fontSize: width / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: height / 57),
                              child: Consumer<PassangerInfoModel>(
                                builder: (BuildContext context,
                                    PassangerInfoModel value, Widget? child) {
                                  return MyTextField(
                                    enabled: passangerInfoModel.gstCheckBox,
                                    fillColor: AppColor.textFieldColor,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Consumer<PassangerInfoModel>(
                            builder: (BuildContext context,
                                PassangerInfoModel value, Widget? chid) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: height / 85),
                                child: Checkbox(
                                  value: passangerInfoModel.flightCheckBox,
                                  onChanged: (value) {
                                    passangerInfoModel
                                        .flightCheckBoxLisner(value!);
                                  },
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 26),
                            child: Text(
                              'FLIGHT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.greenColor,
                                fontSize: width / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: height / 57),
                              child: Consumer<PassangerInfoModel>(
                                builder: (BuildContext context,
                                    PassangerInfoModel value, Widget? child) {
                                  return MyTextField(
                                    enabled: passangerInfoModel.flightCheckBox,
                                    fillColor: AppColor.textFieldColor,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height / 45, left: width / 6.1, right: width / 6.1),
              child: RoundButton(
                  hight: height / 16.4,
                  width: width,
                  title: "Continue",
                  onPress: () {},
                  color: AppColor.greenColor),
            ),
          ],
        ),
      ),
    );
  }
}
