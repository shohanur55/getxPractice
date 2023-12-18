import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Counter extends GetxController{
RxInt count=0.obs;
  increment(){
    count++; //count.value dile o hobe..bt na dile problem nai
  }
}

class ChangeOpacity extends GetxController{
  final opacity=0.3.obs;
  changeOpacity(double value){
    opacity.value=value;
  }
}

class SwitchValue extends GetxController{
  RxBool values=false.obs;
  ChangeValue(bool value){
   values.value=value;
  }
}

class Favouritess extends GetxController{
  RxList<String> fruitlist=["apple","banana","mango","jackfruits","kamala","pineappale"].obs;
  RxList favouriteList=[].obs;

 removeitem( valuee_item){
  favouriteList.remove(valuee_item);
}

 additem(valuee_item){
  favouriteList.add(valuee_item);
}

}

class PickerImage extends GetxController{
  RxString pathimage=''.obs;

Future getImage()async{
  ImagePicker picker=ImagePicker();
  final image=await picker.pickImage(source: ImageSource.gallery);
  if(image!=null){
    pathimage.value=image.path.toString();
  }
}

}

