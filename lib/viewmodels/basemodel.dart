import 'package:flutter/foundation.dart';
import 'package:reto_2/services/viewstate.dart';

class BaseModel with ChangeNotifier {
  ViewState _stateview = ViewState.init;

  ViewState get state => _stateview;

  void setState(ViewState value) {
    _stateview = value;
    notifyListeners();
  }
}
