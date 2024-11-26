import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Pages/ExperienceScreen/ExperienceScreenVM.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';
import 'package:get/get.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  final ExperienceScreenVM _experienceScreenVM = ExperienceScreenVM();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 80,
      width: MediaQuery.of(context).size.width - 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          ResponsiveUI.w(100, context),
          ResponsiveUI.h(40, context),
          ResponsiveUI.w(100, context),
          ResponsiveUI.h(0, context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MY EXPERIENCE',
                  style: TextStyle(
                    color: AppColors.textColorWhite,
                    fontSize: ResponsiveUI.sp(48, context),
                    fontFamily: 'PoppinsBold',
                  ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(32, context),
                ),
                Container(
                  width: ResponsiveUI.w(800, context),
                  height: ResponsiveUI.h(250, context),
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.7),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     AppColors.gradientStartColor,
                    //     AppColors.gradientMidColor,
                    //     AppColors.gradientEndColor,
                    //   ],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                    shape: BoxShape.circle,
                  ),
                  // child: Image.asset(
                  //   "lib/Resources/Images/Packiyalakshmi.png",
                  //   // width: ResponsiveUI.w(500, context),
                  //   // height: ResponsiveUI.h(250, context),
                  // ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(32, context),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      ResponsiveUI.w(40, context),
                      ResponsiveUI.h(12, context),
                      ResponsiveUI.w(40, context),
                      ResponsiveUI.h(12, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Utilities.launchWebUrl(url: AppConstants.resumeUrl);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Download my resume',
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
            SizedBox(
              width: ResponsiveUI.w(165, context),
            ),
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         height: ResponsiveUI.h(60, context),
            //       ),
            //       Card(
            //         color: Colors.lightBlue,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "Apr 2023 - Sept 2024",
            //                   style: TextStyle(
            //                     color: AppColors.appBackgroundWhite,
            //                     fontSize: ResponsiveUI.sp(18, context),
            //                     fontFamily: 'PoppinsBoldItalic',
            //                   ),
            //                 ),
            //                 Text(
            //                   "Avasoft Pvt Ltd, Chennai",
            //                   style: TextStyle(
            //                     color: AppColors.appBackgroundWhite,
            //                     fontSize: ResponsiveUI.sp(16, context),
            //                     fontFamily: 'PoppinsMedium',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: ResponsiveUI.h(12, context),
            //             ),
            //             Text(
            //               'FLUTTER MOBILE APP DEVELOPER',
            //               style: TextStyle(
            //                 color: AppColors.appBackgroundWhite,
            //                 fontSize: ResponsiveUI.sp(32, context),
            //                 fontFamily: 'PoppinsBold',
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       SizedBox(
            //         width: ResponsiveUI.w(1320, context),
            //         child: Divider(
            //           height: ResponsiveUI.h(1, context),
            //           color: AppColors.appBackgroundWhite.withOpacity(0.5),
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Oct 2022 - May 2023",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(18, context),
            //               fontFamily: 'PoppinsBoldItalic',
            //             ),
            //           ),
            //           Text(
            //             "Avasoft Pvt Ltd, Chennai",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(16, context),
            //               fontFamily: 'PoppinsMedium',
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(12, context),
            //       ),
            //       Text(
            //         'BACKEND LEAD DEVELOPER',
            //         style: TextStyle(
            //           color: AppColors.appBackgroundWhite,
            //           fontSize: ResponsiveUI.sp(32, context),
            //           fontFamily: 'PoppinsBold',
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       SizedBox(
            //         width: ResponsiveUI.w(1320, context),
            //         child: Divider(
            //           height: ResponsiveUI.h(1, context),
            //           color: AppColors.appBackgroundWhite.withOpacity(0.5),
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "May 2022 - Oct 2022",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(18, context),
            //               fontFamily: 'PoppinsBoldItalic',
            //             ),
            //           ),
            //           Text(
            //             "Avasoft Pvt Ltd, Chennai",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(16, context),
            //               fontFamily: 'PoppinsMedium',
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(12, context),
            //       ),
            //       Text(
            //         'XAMARIN MOBILE APP DEVELOPER',
            //         style: TextStyle(
            //           color: AppColors.appBackgroundWhite,
            //           fontSize: ResponsiveUI.sp(32, context),
            //           fontFamily: 'PoppinsBold',
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       SizedBox(
            //         width: ResponsiveUI.w(1320, context),
            //         child: Divider(
            //           height: ResponsiveUI.h(1, context),
            //           color: AppColors.appBackgroundWhite.withOpacity(0.5),
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Nov 2021 - Apr 2022",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(18, context),
            //               fontFamily: 'PoppinsBoldItalic',
            //             ),
            //           ),
            //           Text(
            //             "Avasoft Pvt Ltd, Chennai",
            //             style: TextStyle(
            //               color: AppColors.appBackgroundWhite,
            //               fontSize: ResponsiveUI.sp(16, context),
            //               fontFamily: 'PoppinsMedium',
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(12, context),
            //       ),
            //       Text(
            //         'TRAINEE SOFTWARE ENGINEER',
            //         style: TextStyle(
            //           color: AppColors.appBackgroundWhite,
            //           fontSize: ResponsiveUI.sp(32, context),
            //           fontFamily: 'PoppinsBold',
            //         ),
            //       ),
            //       SizedBox(
            //         height: ResponsiveUI.h(20, context),
            //       ),
            //       SizedBox(
            //         width: ResponsiveUI.w(1320, context),
            //         child: Divider(
            //           height: ResponsiveUI.h(1, context),
            //           color: AppColors.appBackgroundWhite.withOpacity(0.5),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: _experienceScreenVM.experienceList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: ResponsiveUI.h(20, context),
                    ),
                    child: InkWell(
                      onHover: (value) {
                        _experienceScreenVM.setHoverValue(value: value);
                        _experienceScreenVM.setHoverIndexValue(value: index);
                      },
                      onTap: () {},
                      child: Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          child: Card(
                            color: AppColors.black,
                            elevation: _experienceScreenVM.isHover.value &&
                                    _experienceScreenVM.hoverIndex.value ==
                                        index
                                ? 25.0
                                : 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(
                                color: AppColors.white,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                _experienceScreenVM.hoverIndex.value == index
                                    ? ResponsiveUI.w(32, context)
                                    : ResponsiveUI.w(30, context),
                                _experienceScreenVM.hoverIndex.value == index
                                    ? ResponsiveUI.h(12, context)
                                    : ResponsiveUI.h(10, context),
                                _experienceScreenVM.hoverIndex.value == index
                                    ? ResponsiveUI.w(32, context)
                                    : ResponsiveUI.w(30, context),
                                _experienceScreenVM.hoverIndex.value == index
                                    ? ResponsiveUI.h(12, context)
                                    : ResponsiveUI.h(10, context),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _experienceScreenVM
                                            .experienceList[index].companyName,
                                        style: TextStyle(
                                          color: AppColors.textColorWhite,
                                          fontSize:
                                              ResponsiveUI.sp(16, context),
                                          fontFamily: 'PoppinsMedium',
                                        ),
                                      ),
                                      Text(
                                        _experienceScreenVM
                                            .experienceList[index].duration,
                                        style: TextStyle(
                                          color: AppColors.textColorWhite,
                                          fontSize:
                                              ResponsiveUI.sp(18, context),
                                          fontFamily: 'PoppinsBoldItalic',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ResponsiveUI.h(12, context),
                                  ),
                                  Text(
                                    _experienceScreenVM
                                        .experienceList[index].title,
                                    style: TextStyle(
                                      color: AppColors.textColorWhite,
                                      fontSize: ResponsiveUI.sp(32, context),
                                      fontFamily: 'PoppinsBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
