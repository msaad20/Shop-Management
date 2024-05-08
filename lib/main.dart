import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shop_management/app.dart';
import 'package:shop_management/app_localization.dart';
import 'package:shop_management/firebase_options.dart';
import 'package:shop_management/provider_scope.dart';
import 'package:shop_management/service_locator.dart';

part 'initializer.dart';
part 'global.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await _Initializer.load(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const AppLocalization(
      child: ProviderScope(
        child: App(),
      ),
    ),
  );
  FlutterNativeSplash.remove();
}
