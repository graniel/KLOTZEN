import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klotzen/src/components/core/buttons/button.dart';
import 'package:klotzen/src/components/core/spacing.dart';
import 'package:klotzen/src/providers/packs_provider.dart';
import 'package:klotzen/src/router/router.gr.dart';
import 'package:klotzen/src/styles/colors.dart';
import 'package:klotzen/src/styles/values.dart';
import 'package:klotzen/src/constants/strings.dart';
import 'package:provider/provider.dart';

import '../../router/router.gr.dart';

/// Contains buttons to start game, see terms, or tutorial
class HomeOptions extends StatelessWidget {
  const HomeOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Values.mainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // start button (takes to pack selesction first)
          Button(
              text: AppStrings.startButton,
              color: AppColors.accent,
              width: 200.0,
              focus: true,
              onTap: () => openPacksRoute(context)),

          // spacing to make it look cleaner
          Spacing(height: Values.mainPadding),

          Button(
              text: AppStrings.termsRouteTitle,
              // outline: true,
              color: AppColors.oranges[0],
              onTap: () => context.router.push(TermsRoute())),

          // spacing to make it look cleaner
          Spacing(height: Values.mainPadding),
        ],
      ),
    );
  }

  static openPacksRoute(BuildContext context) {
    //unselect Packs
    PacksProvider packsProvider =
        Provider.of<PacksProvider>(context, listen: false);
    packsProvider.unselectPacks();

    context.router.push(PacksScreen());
  }
}
