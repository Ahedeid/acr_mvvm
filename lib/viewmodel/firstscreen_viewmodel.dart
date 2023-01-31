

import '../model/firesscreen_model.dart';


// هاد عبارة عن الداتا المحتاجة الها ل view
class FirestViewModel{

  String titel = 'FirstApp';

  // هنا الداتا الي جاية من model يتم التعامل معها هنا ثم تواصل ل view معها وجلب الداتا من هنا
  // حيث تم تعرفي instans من الكلاس الخاص ب model
 var model = CounterModel();
 // هاي الدالة لجلب ال count
  getCount(){
   return model.count;
  }
  // هاي الدالة ل عمل عملية increment على count

  inc(){
   return model.count++;
  }

}