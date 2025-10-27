import 'package:one/app/app.dart';
import 'package:one/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
