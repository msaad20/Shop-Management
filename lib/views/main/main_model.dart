import 'package:go_router/go_router.dart';
import 'package:shop_management/config/router/router_extension.dart';
import 'package:shop_management/core/base/base_view_model.dart';

class MainModel extends BaseViewModel {
  StatefulNavigationShell shell;
  MainModel(this.shell);
  late int selectedIndex = shell.currentIndex;
  void onDestinationSelected(int index) {
    shell.goBranch(
      index,
      initialLocation: index == shell.currentIndex,
    );
    selectedIndex = index;
    notifyListeners();
  }

  List<SlRoutes> get navigationTabs => [
        SlRoutes.home,
      ];
}
