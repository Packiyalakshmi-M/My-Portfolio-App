import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                  color: AppColors.appBackgroundBlack,
                  fontSize: ResponsiveUI.sp(18, context),
                  fontFamily: 'IBMPlexSerifSemiBoldItalic',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(16, context),
              ),
              Text(
                "REACH OUT ME",
                style: TextStyle(
                  color: AppColors.appBackgroundBlack,
                  fontSize: ResponsiveUI.sp(48, context),
                  fontFamily: 'IBMPlexSerifBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(30, context),
              ),
              Text(
                "Surandai-627 859, Tenkasi District, \nTamilNadu, India",
                style: TextStyle(
                  color: AppColors.appBackgroundBlack,
                  fontSize: ResponsiveUI.sp(16, context),
                  fontFamily: 'IBMPlexSerifSemiRegular',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(60, context),
              ),
              Text(
                "+91 9626508568",
                style: TextStyle(
                  color: AppColors.appBackgroundBlack,
                  fontSize: ResponsiveUI.sp(32, context),
                  fontFamily: 'IBMPlexSerifBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(20, context),
              ),
              Text(
                "packiya2706.m@gmail.com",
                style: TextStyle(
                  color: AppColors.appBackgroundBlack,
                  fontSize: ResponsiveUI.sp(32, context),
                  fontFamily: 'IBMPlexSerifBold',
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
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'IBMPlexSerifMedium',
                        decoration: TextDecoration.underline,
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
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'IBMPlexSerifMedium',
                        decoration: TextDecoration.underline,
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
              gradient: LinearGradient(
                colors: [
                  AppColors.gradientStartColor,
                  AppColors.gradientMidColor,
                  AppColors.gradientEndColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
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
                      color: AppColors.appBackgroundWhite,
                      fontSize: ResponsiveUI.sp(40, context),
                      fontFamily: 'IBMPlexSerifBold',
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
                          cursorColor: AppColors.appBackgroundWhite,
                          style: TextStyle(
                            color: AppColors.appBackgroundWhite,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'LatoRegular',
                          ),
                          decoration: InputDecoration(
                            labelText: 'NAME',
                            labelStyle: TextStyle(
                              color: AppColors.appBackgroundWhite,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'IBMPlexSerifMedium',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.appBackgroundWhite,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.appBackgroundWhite,
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
                          cursorColor: AppColors.appBackgroundWhite,
                          style: TextStyle(
                            color: AppColors.appBackgroundWhite,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'LatoRegular',
                          ),
                          decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                              color: AppColors.appBackgroundWhite,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'IBMPlexSerifMedium',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.appBackgroundWhite,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.appBackgroundWhite,
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
                      cursorColor: AppColors.appBackgroundWhite,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      style: TextStyle(
                        color: AppColors.appBackgroundWhite,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'LatoRegular',
                      ),
                      decoration: InputDecoration(
                        labelText: 'MESSAGE',
                        labelStyle: TextStyle(
                          color: AppColors.appBackgroundWhite,
                          fontSize: ResponsiveUI.sp(16, context),
                          fontFamily: 'IBMPlexSerifMedium',
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.appBackgroundWhite,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.appBackgroundWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(40, context),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.appBackgroundBlack,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        ResponsiveUI.w(60, context),
                        ResponsiveUI.h(10, context),
                        ResponsiveUI.w(60, context),
                        ResponsiveUI.h(10, context),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Submit now',
                            style: TextStyle(
                              color: AppColors.appBackgroundWhite,
                              fontSize: ResponsiveUI.sp(18, context),
                              fontFamily: 'IBMPlexSerifMedium',
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUI.w(12, context),
                          ),
                          Container(
                            // width: ResponsiveUI.w(24, context),
                            // height: ResponsiveUI.h(24, context),
                            padding:
                                EdgeInsets.all(ResponsiveUI.sp(4.2, context)),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.gradientStartColor,
                                  AppColors.gradientMidColor,
                                  AppColors.gradientEndColor,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'lib/Resources/Images/OpensiteArrow.svg',
                                width: ResponsiveUI.w(14, context),
                                height: ResponsiveUI.h(14, context),
                              ),
                            ),
                          )
                        ],
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
