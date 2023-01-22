import 'design_systems/widgets/texts/taxt_base.dart';
import 'design_systems/design_system_barrel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DesignSystemProvider(
      create: (context, state) {
        return MaterialApp(
          title: 'Design System Demo',
          theme: state.themeData,
          darkTheme: state.darkThemeData,
          themeMode: state.themeMode,
          home: const MyHomePage(title: 'Design System'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isDark = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _isDark = !_isDark;
      context.designSystemCubit.update(isDark: _isDark);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextBase.title(
              lable: 'You have pushed the button this many times:',
            ),
            TextBase.title(
              lable: '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
