
class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("It is one of the branches of Majillano Company, specialized in all commercial advertisements and marketing plans");
  sliderModel.setTitle("Majillano Media");
  sliderModel.setImageAssetPath("assets/img/logo.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Your visual identity will define your market value among competitors and highlight your potential and value in the market");
  sliderModel.setTitle("Why do you need a visual ID?");
  sliderModel.setImageAssetPath("assets/img/02.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Everything related to electronic marketing and creating attractive and purposeful content for your page, publishing and promotion");
  sliderModel.setTitle("Majillano Media");
  sliderModel.setImageAssetPath("assets/img/03.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}