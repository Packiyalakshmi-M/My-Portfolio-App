class WorkBO {
  String title;
  String logo;
  String description;
  String techStack;
  String techStackLogo;
  String technologiesUsed;
  List<String> bulletPoints;
  String gitHubLink;
  bool isExpanded;
  WorkBO({
    required this.title,
    required this.logo,
    required this.description,
    required this.techStack,
    required this.techStackLogo,
    required this.technologiesUsed,
    required this.bulletPoints,
    required this.gitHubLink,
    required this.isExpanded,
  });
}
