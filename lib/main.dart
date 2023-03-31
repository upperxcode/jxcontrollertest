import 'package:flutter/material.dart';
import 'package:jxcontrollertest/themes/colorscheme.dart';
import 'presentation/ui/empresa.page.dart';

Future<void> main() async {
  /*
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Constants.supabaseUrl,
    aonKey: Constants.supabaseAnnonKe y,
  );
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ValueNotifier<bool> _notifier = ValueNotifier(false);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _notifier,
      builder: (_, mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false, colorScheme: lightColorScheme),
          darkTheme:
              ThemeData(useMaterial3: false, colorScheme: darkColorScheme),
          themeMode: mode ? ThemeMode.dark : ThemeMode.light,
          home: const EmpresaPage(),
        );
      },
    );
  }
}

bool velhossFunc(String? s, bool? v) {
  int velhossInt = 0;
  bool velhossBool = true;
  print('teste');

  String velhossString = "";
  print("$velhossInt : $velhossString");
  return velhossBool;
}
