import 'package:flutter/foundation.dart';

class Countpro with ChangeNotifier
{
  int _count = 0;
  int get count => _count;

  void setcount()
  {
    _count++;
    notifyListeners();
  }
}


class Boolprovider with ChangeNotifier
{
  bool _passwordVisible = true;
  bool _showkey = false;

  bool get passwordVisible => _passwordVisible;
  bool get showkey => _showkey;

  void setpass()
  {
    _passwordVisible=!_passwordVisible;
    notifyListeners();
    print('toggled password');
  }

  void setkey()
  {
    _showkey=!_showkey;
    notifyListeners();
    print('toggled showkey');
  }
}