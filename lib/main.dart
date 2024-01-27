
import 'package:english_ai/splash.dart';
import 'package:english_ai/theme/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // // await Firebase.initializeApp(
  // //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
  FlutterTts flutterTts = FlutterTts();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get googleSignInAccount => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ThemeModel(),
      child:Consumer(
        builder: (context,  ThemeModel themeNotifier, child){
        return MaterialApp(
        title: 'etc-ai',
        debugShowCheckedModeBanner: false,
        theme:themeNotifier.isDark?
        ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 243, 195, 191),
          brightness: Brightness.dark, // Match brightness
                    ),
          backgroundColor: Colors.amber)
        :
        ThemeData(brightness: Brightness.light,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
        ),
        home:
        splashScreen()
          // Responsive_layout(
          //       mobileScaffold: MobilePage(title: 'mobilepage',userdata:googleSignInAccount),
          //       tabletScaffold: tabletPage(title: 'tabletpage',userdata:googleSignInAccount),
          //       desktopScaffold: DesktopPage(title: 'desktoppage',userdata:googleSignInAccount))

    );
    },)
    );
  }
}

