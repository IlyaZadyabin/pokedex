import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';
import 'package:pokedex/shared/config/go_router.dart';
import 'package:pokedex/shared/data/services/db_service/db_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initApp();
  }

  Future<void> initApp() async {
    await GetIt.instance.get<DBService>().init();
    await goHome();
  }

  Future<void> goHome() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.goNamed(Routes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreStyles.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.launcherIcon.image(width: 75, height: 75),
            const SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'POKEMON',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: CoreStyles.white, letterSpacing: 0.3),
                ),
                Text(
                  context.l10n.pokedex,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: CoreStyles.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
