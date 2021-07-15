import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciadeestado/controller.dart';

enum Status { empty, error, loading, success }

main() {
  late Controller<Status> controller;

  setUp(() {
    controller = Controller<Status>(Status.empty);
  });

  test('Validar o estado inicial do controller', () {
    expect(controller.state, Status.empty);
  });

  test('Validar o uso do listen', () {
    var isCliked = false;
    controller.listen((_) => isCliked = true);
    controller.update(Status.loading);
    expect(isCliked, isTrue);
  });
}
