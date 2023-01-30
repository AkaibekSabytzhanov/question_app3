import 'package:question_app3/models/suroo_model.dart';

class SurooData {
  int suroonunNomeri = 0;
  List<SurooModel> suroojooptor = [
    SurooModel(suroolor: "1. Кыргызстандын борбору Ош", jooptor: false),
    SurooModel(suroolor: "2. Ошто арка бар", jooptor: true),
    SurooModel(suroolor: "3. Кыргызстанда 7 облус бар", jooptor: true),
    SurooModel(suroolor: "4. Өзгөн Баткенге карайт", jooptor: false),
    SurooModel(suroolor: "5. Ош Бишкектен кичине", jooptor: true),
    SurooModel(suroolor: "6. Кыргызстандын борбору Бишкек", jooptor: true),
    SurooModel(suroolor: "7. Эң узун дарыя Ак-Буура ", jooptor: false),
  ];

  String suroonuAlypKel() {
    if (suroonunNomeri < suroojooptor.length) {
      return suroojooptor[suroonunNomeri].suroolor;
    }
    return '';
  }

  bool jooptyAlypKel() {
    if (suroonunNomeri < suroojooptor.length) {
      return suroojooptor[suroonunNomeri].jooptor;
    }
    return null!;
  }

  void suroonuOtkoz() {
    suroonunNomeri++;
  }

  void suroonuNolgoKaitar() {
    suroonunNomeri = 0;
  }
}

final SurooData surooData = SurooData();
