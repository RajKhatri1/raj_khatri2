import 'package:get/get.dart';
import 'package:raj_khatri2/model/homemodel/Homemodel.dart';
import 'package:raj_khatri2/utils/apihelper/apihelper.dart';

class homecontroller extends GetxController{

  Apihelper apihelper = Apihelper();
   // RxList<HomeModel> P1 = <HomeModel>[].obs;
   Rx<HomeModel> h1 = HomeModel().obs;

    Future getapi()
    async {
      h1.value = HomeModel.fromJson(await Apihelper.helper.callapi());
    }

    void sorting()
    {
        h1.value.productData!.sort((a, b) {return a.name!.toLowerCase().compareTo(a.name!.toLowerCase());},);

    }
}