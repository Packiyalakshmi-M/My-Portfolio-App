import 'package:flutter/material.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';
import 'package:emailjs/emailjs.dart' as emailjs;

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        ResponsiveUI.w(115, context),
        ResponsiveUI.h(80, context),
        ResponsiveUI.w(115, context),
        ResponsiveUI.h(80, context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(18, context),
                  fontFamily: 'PoppinsSemiBoldItalic',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(16, context),
              ),
              Text(
                "REACH OUT ME",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(48, context),
                  fontFamily: 'PoppinsBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(30, context),
              ),
              Text(
                "Surandai - 627 859, Tenkasi District, \nTamilNadu, India",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(16, context),
                  fontFamily: 'PoppinsMedium',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(60, context),
              ),
              Text(
                "+91 9626508568",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(32, context),
                  fontFamily: 'PoppinsBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(20, context),
              ),
              Text(
                "packiya2706.m@gmail.com",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(32, context),
                  fontFamily: 'PoppinsBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(45, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Utilities.launchWebUrl(url: AppConstants.linkedInProfile);
                    },
                    child: Text(
                      "LinkedIn",
                      style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'PoppinsMedium',
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.textColorWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(20, context),
                  ),
                  GestureDetector(
                    onTap: () {
                      Utilities.launchWebUrl(url: AppConstants.gitHubLink);
                    },
                    child: Text(
                      "GitHub",
                      style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'PoppinsMedium',
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.textColorWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: ResponsiveUI.w(165, context),
          ),
          Container(
            decoration: BoxDecoration(
              // color: AppColors.white,
              border: Border.all(
                color: AppColors.white,
                width: 2,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                ResponsiveUI.w(85, context),
                ResponsiveUI.h(44, context),
                ResponsiveUI.w(85, context),
                ResponsiveUI.h(44, context),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CONTACT ME",
                    style: TextStyle(
                      color: AppColors.textColorWhite,
                      fontSize: ResponsiveUI.sp(40, context),
                      fontFamily: 'PoppinsBold',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(30, context),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: ResponsiveUI.h(35, context),
                        width: ResponsiveUI.w(560, context),
                        child: TextFormField(
                          controller: _nameController,
                          cursorColor: AppColors.white,
                          style: TextStyle(
                            color: AppColors.textColorWhite,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'LatoRegular',
                          ),
                          decoration: InputDecoration(
                            labelText: 'NAME',
                            labelStyle: TextStyle(
                              color: AppColors.textColorWhite,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'PoppinsMedium',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(45, context),
                      ),
                      SizedBox(
                        height: ResponsiveUI.h(35, context),
                        width: ResponsiveUI.w(560, context),
                        child: TextFormField(
                          controller: _emailController,
                          cursorColor: AppColors.white,
                          style: TextStyle(
                            color: AppColors.textColorWhite,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'LatoRegular',
                          ),
                          decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                              color: AppColors.textColorWhite,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'PoppinsMedium',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(56, context),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(35, context),
                    width: ResponsiveUI.w(1210, context),
                    child: TextFormField(
                      controller: _messageController,
                      cursorColor: AppColors.white,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'LatoRegular',
                      ),
                      decoration: InputDecoration(
                        labelText: 'MESSAGE',
                        labelStyle: TextStyle(
                          color: AppColors.textColorWhite,
                          fontSize: ResponsiveUI.sp(16, context),
                          fontFamily: 'PoppinsMedium',
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(40, context),
                  ),
                  GestureDetector(
                    onTap: () async {
                      try {
                        emailjs.init(const emailjs.Options(
                          publicKey: 'u-u6OouFhy8Nfsksp',
                          privateKey: 'HGCkBJnzQCFSVcCfs_vVZ',
                        ));

                        var response = await emailjs.send(
                          "service_8kt79ic",
                          "template_dho237v",
                          {
                            'from_name': _nameController.text,
                            'message': _messageController.text,
                            'reply_to': _emailController.text,
                          },
                        );
                        print('SUCCESS!');
                        if (response.status == 200) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Notification mail sent!"),
                            ),
                          );
                        }
                      } catch (e) {
                        print(e.toString());
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Something went wrong!"),
                          ),
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          ResponsiveUI.w(40, context),
                          ResponsiveUI.h(9, context),
                          ResponsiveUI.w(40, context),
                          ResponsiveUI.h(9, context),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Submit now',
                              style: TextStyle(
                                color: AppColors.textColorBlack,
                                fontSize: ResponsiveUI.sp(18, context),
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                            SizedBox(
                              width: ResponsiveUI.w(15, context),
                            ),
                            Container(
                              // width: ResponsiveUI.w(24, context),
                              // height: ResponsiveUI.h(24, context),
                              padding: EdgeInsets.only(
                                left: ResponsiveUI.w(10, context),
                                right: ResponsiveUI.w(10, context),
                                top: ResponsiveUI.h(2, context),
                                bottom: ResponsiveUI.h(2, context),
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.black,
                                // gradient: LinearGradient(
                                //   colors: [
                                //     AppColors.gradientStartColor,
                                //     AppColors.gradientMidColor,
                                //     AppColors.gradientEndColor,
                                //   ],
                                //   begin: Alignment.topLeft,
                                //   end: Alignment.bottomRight,
                                // ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'lib/Resources/Images/ArrowWhite.png',
                                  width: ResponsiveUI.w(25, context),
                                  height: ResponsiveUI.h(14, context),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
