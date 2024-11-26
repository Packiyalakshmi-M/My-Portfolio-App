import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gif/gif.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final GifController _gifController;

  @override
  void initState() {
    _gifController = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        ResponsiveUI.w(50, context),
        ResponsiveUI.h(80, context),
        ResponsiveUI.w(50, context),
        ResponsiveUI.h(0, context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stack(
              //   children: [
              //     SvgPicture.asset(
              //       'lib/Resources/Images/NameBG.svg',
              //       height: ResponsiveUI.h(60, context),
              //       width: ResponsiveUI.w(260, context),
              //     ),
              //     Text(
              //       "I AM",
              //       style: TextStyle(
              //         color: AppColors.appBackgroundBlack,
              //         fontSize: ResponsiveUI.sp(50, context),
              //         fontFamily: 'PoppinsRegular',
              //       ),
              //     ),
              //   ],
              // ),
              Text(
                "PACKIYALAKSHMI MURUGAN",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(50, context),
                  fontFamily: 'PoppinsBold',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(24, context),
              ),
              Text(
                "Mobile App Developer",
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(30, context),
                  fontFamily: 'PoppinsBoldItalic',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(62, context),
              ),
              GestureDetector(
                onTap: () {
                  Utilities.launchWebUrl(url: AppConstants.linkedInProfile);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
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
                          'Let\'s connect with me',
                          style: TextStyle(
                            color: AppColors.textColorBlack,
                            fontSize: ResponsiveUI.sp(18, context),
                            fontFamily: 'PoppinsMedium',
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveUI.w(12, context),
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
                            // gradient: LinearGradient(
                            //   colors: [
                            //     AppColors.gradientStartColor,
                            //     AppColors.gradientMidColor,
                            //     AppColors.gradientEndColor,
                            //   ],
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.bottomRight,
                            // ),
                            color: AppColors.black,
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
              SizedBox(
                height: ResponsiveUI.h(48, context),
              ),
              Row(
                children: [
                  Container(
                    height: ResponsiveUI.h(50, context),
                    width: ResponsiveUI.w(50, context),
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
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
                      child: SvgPicture.asset(
                        'lib/Resources/Images/Dialer.svg',
                        height: ResponsiveUI.h(14, context),
                        width: ResponsiveUI.w(14, context),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(12, context),
                  ),
                  GestureDetector(
                    onTap: () {
                      Utilities.launchWebUrl(
                        url: "tel:${AppConstants.phoneNumber}",
                      );
                    },
                    child: Text(
                      "+91 9626508568",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(18, context),
                        fontFamily: 'PoppinsBoldItalic',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(38, context),
                  ),
                  Container(
                    height: ResponsiveUI.h(50, context),
                    width: ResponsiveUI.w(50, context),
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
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
                      child: SvgPicture.asset(
                        'lib/Resources/Images/Email.svg',
                        height: ResponsiveUI.h(11, context),
                        width: ResponsiveUI.w(11, context),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(12, context),
                  ),
                  GestureDetector(
                    onTap: () {
                      Utilities.launchWebUrl(
                        url: "mailto:${AppConstants.email}",
                      );
                    },
                    child: Text(
                      AppConstants.email,
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(18, context),
                        fontFamily: 'PoppinsBoldItalic',
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: ResponsiveUI.w(800, context),
                height: ResponsiveUI.h(360, context),
                decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
                // child: Gif(
                //   width: ResponsiveUI.w(800, context),
                //   height: ResponsiveUI.h(360, context),
                //   controller: _gifController,
                //   autostart: Autostart.loop,
                //   image: const AssetImage(
                //     'lib/Resources/Gifs/ProfileGIF.gif',
                //   ),
                // ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
