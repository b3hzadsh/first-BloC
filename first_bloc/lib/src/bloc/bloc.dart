import 'dart:async';

// problem with make output from stream ! //TODO learn it
class BloC {
  final _moneyStream = new StreamController();
  final _benefitStream = new StreamController();
  final _timeStream = new StreamController();

  get changeMoney => _moneyStream.sink.add;
  get money => _moneyStream.stream;
  get changeBenefit => _benefitStream.sink.add;
  get benefit => _benefitStream.stream;
  get changeTime => _timeStream.sink.add;
  get time => _timeStream.stream;

  void dispose() {
    _moneyStream.close();
    _benefitStream.close();
    _timeStream.close();
  }
}

BloC bloc = new BloC();
