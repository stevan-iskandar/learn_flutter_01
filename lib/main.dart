import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'src/app.dart';
import 'src/screens/settings/settings_controller.dart';
import 'src/screens/settings/settings_service.dart';
import 'src/services/api/api.dart';

void main() async {
  await dotenv.load();

  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();

  final api = Api();
  await api.loadApi();

  runApp(MyApp(settingsController: settingsController));
}
