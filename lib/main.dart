import 'package:flutter/material.dart';
import 'package:projectt/Forgot.dart';
import 'package:projectt/aboutapp.dart';
import 'package:projectt/homepage.dart';
import 'package:projectt/login.dart';
import 'package:projectt/create.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:projectt/map/maps.dart';
import 'package:projectt/maps/myMaps.dart';
import 'package:projectt/zonne/Central.dart';
import 'package:projectt/zonne/Eastern.dart';
import 'package:projectt/zonne/Isaan.dart';
import 'package:projectt/zonne/Northern.dart';
import 'package:projectt/zonne/Southern.dart';
import 'package:projectt/zonne/Western.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Athiti'),
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      initialRoute: "/",
      routes: {
        // '/':(context) => const LoginPage(),
        '/create': (context) => const Createpage(),
        //'/Forgetpage':(context) => const Forgetpage(),
        '/homepage': (context) => const Homepage(),
        '/create': (context) => const Createpage(),
        '/forgot': (context) => const forgotroute(),
        '/north': (context) => const Northern(),
        '/isaan': (context) => const Isaan(),
        '/central': (context) => const Central(),
        '/eastern': (context) => const Eastern(),
        '/western': (context) => const Western(),
        '/south': (context) => const Southern(),
        '/ampawa': (context) => const Ampawa(),
        '/7Waterfall': (context) => const SevenWaterfall(),
        '/watprakaew': (context) => const Watprakaew(),
        '/suansiam': (context) => const Suansiam(),
        '/intanon': (context) => const Intanon(),
        '/pai': (context) => const Pai(),
        '/watrongkhun': (context) => const WatRongKhun(),
        '/phushefah': (context) => const PhuSheFah(),
        '/kohkood': (context) => const KohKood(),
        '/kohlarn': (context) => const KohLarn(),
        '/kohsamaesan': (context) => const KohSaMaeSan(),
        '/watsothorn': (context) => const WatSoThorn(),
        '/sampanbrok': (context) => const SamPanBrok(),
        '/ganghanrom': (context) => const GangHanRom(),
        '/khunrumpaw': (context) => const KhunRumPaw(),
        '/numpong': (context) => const NumPong(),
        '/samui': (context) => const Samui(),
        '/matra': (context) => const Matra(),
        '/kohtao': (context) => const KohTao(),
        '/uthayan': (context) => const uthayan(),
        '/khaosamyod': (context) => const KhaoSamYod(),
        '/meanumcwer': (context) => const MeaNumCwer(),
        '/dumnernsadurk': (context) => const DumNernSaDurk(),
        '/hardchaum': (context) => const HardChaum(),
        '/about': (context) => const aboutapp(),
        '/MaJaM': (context) => const MaJaM(),
        '/PhuKraDueng': (context) => const PhuKraDueng(),
        '/NamToksarika': (context) => const NamToksarika(),
        '/KrangHimPeng': (context) => const KrangHimPeng(),
        '/TeeLeoSou': (context) => const TLauseo(),
        '/myMaps': (context) => const myMaps(),
        '/myMapsgranghuang': (context) => const myMapsgranghuang(),
        '/myMapsmajam': (context) => const myMapsmajam(),
        '/myMapstlo': (context) => const myMapstlo(),
        '/myMapsstp': (context) => const myMapsstp(),
        '/myMapsgmd': (context) => const myMapskangmoddang(),
        '/myMapssampb': (context) => const myMapssampb(),
        '/myMapsgangrom': (context) => const myMapsgangrom(),
        '/myMapskokgood': (context) => const myMapskokgood(),
        '/myMapskokran': (context) => const myMapskokran(),
        '/myMapskoksamu': (context) => const myMapskoksamu(),
        '/myMapskokmadta': (context) => const myMapskokmadta(),
        '/myMapsampawa': (context) => const myMapsampawa(),
        '/myMapssevenwate': (context) => const myMapssevenwater(),
        '/myMapsintanon': (context) => const myMapsintanon(),
        '/myMapspai': (context) => const myMapspai(),
        '/myMapsbrigekaw': (context) => const myMapsbrigekaw(),
        '/myMapskoawsamroy': (context) => const myMapskoawsamroy(),
        '/myMapsWatRongKhun': (context) => const myMapsWatrongkhun(),
        '/myMapsMaeJam': (context) => const myMapsMaeJam(),
        '/myMapsSarika': (context) => const myMapsSarika(),
        '/myMapsPhuKraDeung': (context) => const myMapsPhuKraDeung(),
        '/myMapsTLeoSu': (context) => const myMapsTLeoSu(),
        '/myMapsKangHinPerng': (context) => const myMapsKangHinPerng(),
        '/myMapsPhusheFah': (context) => const myMapsPhusheFah(),
        
      
        //'/mymaps': (context) => const myMaps(),
      },
    );
  }
}

