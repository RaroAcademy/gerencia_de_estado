import 'package:gerenciadeestado/controller.dart';

class Ob {
  String name;
  String numero;

  Ob({this.name = "", this.numero = ""});
}

class HomeCountController extends Controller<Ob> {
  HomeCountController() : super(Ob());

  void setName(String name) {
    var actual = state;
    actual.name = name;
    update(actual);
  }

  void setNumero(String numero) {
    var actual = state;
    actual.numero = numero;
    update(actual);
  }
}
