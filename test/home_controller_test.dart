import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciadeestado/home/home_controller.dart';

enum Status { empty, error, loading, success }

main() {
  late HomeController controller;

  setUp(() {
    controller = HomeController();
  });

  test('Validar o estado inicial do controller', () {
    expect(controller.state, HomeStatus.empty);
  });

  test('Validar a função de login', () async {
    final states = <HomeStatus>[];
    controller.listen((state) => states.add(state));
    await controller.login();
    expect(states, [HomeStatus.loading, HomeStatus.success]);
  });
}
