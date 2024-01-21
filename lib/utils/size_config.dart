class SizeConfig {
  static const double tablet = 800;
  static const double desktop = 1200;

  //use this way when you build fixed design
  //بمعني ان الديزين هيكون تابليت او موبايل اما في حاله كنت هتستخدم ويب فلازم تستخدم طريقه عير دي يكون فيها كونتيكست

  /*static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }*/
}
