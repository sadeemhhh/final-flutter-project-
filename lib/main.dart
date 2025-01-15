
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
await dotenv.load(fileName: '.env');


await Supabase.initialize(
  url: dotenv.env['supabaseURL']!,
  anonKey: dotenv.env['supabaseKey']!,
);
runApp(const MainApp());
    runApp(const MainApp());

}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcomepage(),
    );
  }
}

