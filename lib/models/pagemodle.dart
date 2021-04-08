import 'package:flutter/cupertino.dart';

class PageModle {
  String _title;
  String _icon;

  String _image;

  PageModle(this._title, this._icon, this._image);

  String get image => _image;

  String get icon => _icon;

  String get title => _title;
}