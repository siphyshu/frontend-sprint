import 'package:get/get.dart';
import 'sliderracetwo_item_model.dart';

class DashboardModel {
  RxList<SliderracetwoItemModel> sliderracetwoItemList =
      RxList.generate(2, (index) => SliderracetwoItemModel());
}
