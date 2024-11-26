import 'package:flutter/material.dart';
import 'package:my_portfolio_app/BOs/WorkBO/WorkBO.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
// import 'package:my_portfolio_app/Pages/AllWorksScreen/AllWorksScreenVM.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class AllWorksScreen extends StatefulWidget {
  final List<WorkBO> works;
  const AllWorksScreen({super.key, required this.works});

  @override
  State<AllWorksScreen> createState() => _AllWorksScreenState();
}

class _AllWorksScreenState extends State<AllWorksScreen> {
  // final AllWorksScreenVM _allWorksScreenVM = AllWorksScreenVM();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundWhite,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            ResponsiveUI.w(115, context),
            ResponsiveUI.h(30, context),
            ResponsiveUI.w(115, context),
            ResponsiveUI.h(0, context),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: ResponsiveUI.sp(25, context),
                      color: AppColors.appBackgroundBlack,
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(20, context),
                  ),
                  Text(
                    "All Works",
                    style: TextStyle(
                      color: AppColors.textColorWhite,
                      fontSize: ResponsiveUI.sp(18, context),
                      fontFamily: 'PoppinsSemiBoldItalic',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveUI.h(30, context),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(scrollbars: false),
                  child: ListView.builder(
                    itemCount: widget.works.length,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // return ExpansionTile(
                      //   title: Text(
                      //     widget.works[index].title,
                      //     style: TextStyle(
                      //       color: AppColors.appBackgroundBlack,
                      //       fontSize: ResponsiveUI.sp(48, context),
                      //       fontFamily: 'PoppinsBold',
                      //     ),
                      //   ),
                      //   children: const [
                      //     ListTile(
                      //       title: Text('data'),
                      //     ),
                      //     ListTile(
                      //       title: Text('data'),
                      //     ),
                      //   ],
                      // );
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: ResponsiveUI.h(50, context),
                        ),
                        child: ExpansionPanelList(
                          elevation: 2.0,
                          animationDuration: Duration(milliseconds: 800),
                          expansionCallback: (int i, bool expanded) {
                            setState(() {
                              widget.works[index].isExpanded =
                                  !widget.works[index].isExpanded;
                            });
                          },
                          children: [
                            ExpansionPanel(
                              
                              headerBuilder:
                                  (BuildContext context, bool isExpanded) {
                                return ListTile(
                                  leading: Image.asset(
                                    widget.works[index].techStackLogo,
                                    height: 24,
                                    width: 24,
                                  ),
                                  title: Text(
                                    widget.works[index].title,
                                    style: TextStyle(
                                      color: AppColors.textColorBlack,
                                      fontSize: ResponsiveUI.sp(35, context),
                                      fontFamily: 'PoppinsBold',
                                    ),
                                  ),
                                );
                              },
                              isExpanded: widget.works[index].isExpanded,
                              body: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  left: ResponsiveUI.w(32, context),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: 'Technologies used: ',
                                          style: TextStyle(
                                            color: AppColors.textColorBlack,
                                            fontSize:
                                                ResponsiveUI.sp(18, context),
                                            fontFamily: 'PoppinsSemiBold',
                                          ),
                                          children: [
                                            TextSpan(
                                              text: widget.works[index]
                                                  .technologiesUsed,
                                              style: TextStyle(
                                                color: AppColors
                                                    .textColorBlack,
                                                fontSize: ResponsiveUI.sp(
                                                    16, context),
                                                fontFamily:
                                                    'PoppinsMedium',
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: ResponsiveUI.h(20, context),
                                    ),
                                    SizedBox(
                                      height: 200,
                                      child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: widget
                                            .works[index].bulletPoints.length,
                                        itemBuilder: (context, i) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                              bottom:
                                                  ResponsiveUI.h(12, context),
                                            ),
                                            child: Text(
                                              "\u2022 ${widget.works[index].bulletPoints[i]}",
                                              style: TextStyle(
                                                color: AppColors
                                                    .textColorBlack,
                                                fontSize: ResponsiveUI.sp(
                                                    16, context),
                                                fontFamily:
                                                    'PoppinsMedium',
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: ResponsiveUI.h(20, context),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Utilities.launchWebUrl(
                                            url:
                                                widget.works[index].gitHubLink);
                                      },
                                      child: Container(
                                        width: ResponsiveUI.w(350, context),
                                        decoration: BoxDecoration(
                                          color: AppColors.black,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: AppColors.appBackgroundBlack,
                                          ),
                                        ),
                                        padding: EdgeInsets.fromLTRB(
                                          ResponsiveUI.w(35, context),
                                          ResponsiveUI.h(0, context),
                                          ResponsiveUI.w(35, context),
                                          ResponsiveUI.h(0, context),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'lib/Resources/Images/SkillsImages/GitHub.png',
                                              height:
                                                  ResponsiveUI.h(35, context),
                                              width:
                                                  ResponsiveUI.w(35, context),
                                            ),
                                            SizedBox(
                                              width:
                                                  ResponsiveUI.w(10, context),
                                            ),
                                            Text(
                                              "Open in GitHub",
                                              style: TextStyle(
                                                color: AppColors
                                                    .textColorWhite,
                                                fontSize: ResponsiveUI.sp(
                                                    16, context),
                                                fontFamily:
                                                    'PoppinsMedium',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: ResponsiveUI.h(20, context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(30, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
