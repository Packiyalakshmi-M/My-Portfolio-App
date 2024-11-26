import 'package:flutter/material.dart';
import 'package:my_portfolio_app/BOs/ProjectsBO/ProjectsBO.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final ProjectsBO projectBO;
  const ProjectDetailsScreen({super.key, required this.projectBO});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
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
                      size: ResponsiveUI.sp(28, context),
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(20, context),
                  ),
                  Text(
                    widget.projectBO.title,
                    style: TextStyle(
                      color: AppColors.textColorWhite,
                      fontSize: ResponsiveUI.sp(28, context),
                      fontFamily: 'PoppinsBold',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveUI.h(30, context),
              ),
              Text(
                widget.projectBO.aboutProject,
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(18, context),
                  fontFamily: 'PoppinsMedium',
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(20, context),
              ),
              RichText(
                text: TextSpan(
                  text: 'Technologies used: ',
                  style: TextStyle(
                    color: AppColors.textColorWhite,
                    fontSize: ResponsiveUI.sp(18, context),
                    fontFamily: 'PoppinsSemiBold',
                  ),
                  children: [
                    TextSpan(
                      text: widget.projectBO.technologiesUsed,
                      style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'PoppinsMedium',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ResponsiveUI.h(20, context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.projectBO.description.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: ResponsiveUI.h(12, context),
                      ),
                      child: Text(
                        "\u2022 ${widget.projectBO.description[index]}",
                        style: TextStyle(
                          color: AppColors.textColorWhite,
                          fontSize: ResponsiveUI.sp(16, context),
                          fontFamily: 'PoppinsMedium',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
