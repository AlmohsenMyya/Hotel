import '../../../core/app_export.dart';
import '../models/filter_result_model.dart';

/// A controller class for the FilterResultPage.
///
/// This class manages the state of the FilterResultPage, including the
/// current filterResultModelObj
class FilterResultController extends GetxController {
  FilterResultController(this.filterResultModelObj);

  Rx<FilterResultModel> filterResultModelObj;
}
