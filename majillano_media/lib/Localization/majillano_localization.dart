import 'package:flutter/material.dart';

class Mlocalization   {
  final Locale locale;

  Mlocalization(this.locale);

  static Mlocalization of(BuildContext context) {
    return Localizations.of<Mlocalization>(context, Mlocalization);
  }

}