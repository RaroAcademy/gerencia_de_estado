import 'package:gerenciadeestado/controller.dart';

enum HomeStatus { empty, error, loading, success }

class HomeController extends Controller<HomeStatus> {
  HomeController() : super(HomeStatus.empty);

  Future<void> login() async {
    update(HomeStatus.loading);
    await Future.delayed(Duration(seconds: 3));
    update(HomeStatus.success);
  }
}
