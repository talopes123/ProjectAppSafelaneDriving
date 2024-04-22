import 'package:goncalo_s_application1/presentation/ecr_inicial_screen/ecr_inicial_screen.dart';
import 'package:goncalo_s_application1/presentation/ecr_inicial_screen/binding/ecr_inicial_binding.dart';
import 'package:goncalo_s_application1/presentation/janela_lateral_draweritem/binding/janela_binding.dart';
import 'package:goncalo_s_application1/presentation/janela_lateral_draweritem/controller/janela_lateral_controller.dart';
import 'package:goncalo_s_application1/presentation/janela_lateral_draweritem/janela_lateral_draweritem.dart';
import 'package:goncalo_s_application1/presentation/registo_screen/registo_screen.dart';
import 'package:goncalo_s_application1/presentation/registo_screen/binding/registo_binding.dart';
import 'package:goncalo_s_application1/presentation/login_screen/login_screen.dart';
import 'package:goncalo_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:goncalo_s_application1/presentation/p_gina_inicial_screen/p_gina_inicial_screen.dart';
import 'package:goncalo_s_application1/presentation/p_gina_inicial_screen/binding/p_gina_inicial_binding.dart';
import 'package:goncalo_s_application1/presentation/pressao_pneus_screen/pressao_pneus_screen.dart';
import 'package:goncalo_s_application1/presentation/pressao_pneus_screen/binding/pressao_pneus_binding.dart';
import 'package:goncalo_s_application1/presentation/informa_oes_viagem_screen/informa_oes_viagem_screen.dart';
import 'package:goncalo_s_application1/presentation/informa_oes_viagem_screen/binding/informa_oes_viagem_binding.dart';
import 'package:goncalo_s_application1/presentation/rating_screen/rating_screen.dart';
import 'package:goncalo_s_application1/presentation/rating_screen/binding/rating_binding.dart';
import 'package:goncalo_s_application1/presentation/rating_one_screen/rating_one_screen.dart';
import 'package:goncalo_s_application1/presentation/rating_one_screen/binding/rating_one_binding.dart';
import 'package:goncalo_s_application1/presentation/pontos_screen/pontos_screen.dart';
import 'package:goncalo_s_application1/presentation/pontos_screen/binding/pontos_binding.dart';
import 'package:goncalo_s_application1/presentation/defini_oes_screen/defini_oes_screen.dart';
import 'package:goncalo_s_application1/presentation/defini_oes_screen/binding/defini_oes_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String ecrInicialScreen = '/ecr_inicial_screen';

  static String registoScreen = '/registo_screen';

  static String loginScreen = '/login_screen';

  static String pGinaInicialScreen = '/p_gina_inicial_screen';

  static String pressaoPneusScreen = '/pressao_pneus_screen';

  static String informaOesViagemScreen = '/informa_oes_viagem_screen';

  static String ratingScreen = '/rating_screen';

  static String ratingOneScreen = '/rating_one_screen';

  static String pontosScreen = '/pontos_screen';

  static String definiOesScreen = '/defini_oes_screen';
  
  static String janelaDrawer = '/janela_lateral_draweritem';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: ecrInicialScreen,
      page: () => EcrInicialScreen(),
      bindings: [
        EcrInicialBinding(),
      ],
    ),
    GetPage(
      name: registoScreen,
      page: () => RegistoScreen(),
      bindings: [
        RegistoBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: pGinaInicialScreen,
      page: () => PGinaInicialScreen(),
      bindings: [
        PGinaInicialBinding(),
      ],
    ),
    GetPage(
      name: pressaoPneusScreen,
      page: () => PressaoPneusScreen(),
      bindings: [
        PressaoPneusBinding(),
      ],
    ),
    GetPage(
      name: informaOesViagemScreen,
      page: () => InformaOesViagemScreen(),
      bindings: [
        InformaOesViagemBinding(),
      ],
    ),
    GetPage(
      name: ratingScreen,
      page: () => RatingScreen(),
      bindings: [
        RatingBinding(),
      ],
    ),
    GetPage(
      name: ratingOneScreen,
      page: () => RatingOneScreen(),
      bindings: [
        RatingOneBinding(),
      ],
    ),
    GetPage(
      name: pontosScreen,
      page: () => PontosScreen(),
      bindings: [
        PontosBinding(),
      ],
    ),
    GetPage(
      name: definiOesScreen,
      page: () => DefiniOesScreen(),
      bindings: [
        DefiniOesBinding(),
      ],
    ),
    GetPage(
      name: janelaDrawer,
      page: () => JanelaLateralDraweritem(),
      bindings: [
        JanelaBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => EcrInicialScreen(),
      bindings: [
        EcrInicialBinding(),
      ],
    )
  ];
}
