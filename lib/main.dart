import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/app/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initAppModule();
  runApp( MyApp());
}



