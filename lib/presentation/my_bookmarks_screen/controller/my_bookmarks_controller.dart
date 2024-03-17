import '../../../core/app_export.dart';import '../models/my_bookmarks_model.dart';/// A controller class for the MyBookmarksScreen.
///
/// This class manages the state of the MyBookmarksScreen, including the
/// current myBookmarksModelObj
class MyBookmarksController extends GetxController {Rx<MyBookmarksModel> myBookmarksModelObj = MyBookmarksModel().obs;

 }
