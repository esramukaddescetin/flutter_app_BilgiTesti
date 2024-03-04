import './soru.dart';

class TestVeri {
  int _soruSirasi = 0;
  List<Soru> _soruBankasi = [
    Soru('Titanic gelmiş geçmiş en büyük gemidir', false),
    Soru('Dünyadaki tavuk sayısı insan sayısından fazladır', true),
    Soru('Kelebeklerin ömrü bir gündür', false),
    Soru('Dünya düzdür', false),
    Soru('Kaju fıstığı aslında bir meyvenin sapıdır', true),
    Soru('Fatih Sultan Mehmet hiç patates yememiştir', true),
    Soru('Fransızlar 80 demek için, 4 - 20 der', true)
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruSirasi].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruSirasi].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruSirasi < _soruBankasi.length - 1) {
      _soruSirasi++;
    }
  }

  bool testBittiMi() {
    if (_soruSirasi >= _soruBankasi.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruSirasi = 0;
  }
}
