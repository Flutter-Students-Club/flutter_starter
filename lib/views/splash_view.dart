import 'package:flutter/material.dart';
import 'package:flutter_starter/core/route_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_starter/core/stateful_wrapper.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
        onInit: () {
          RouteManager.initializeRoute(context);
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            //TODO: Redirect
          });
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('${AppLocalizations.of(context).helloWorld}'),
          ),
        ));
  }
}
