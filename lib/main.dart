import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
} 

