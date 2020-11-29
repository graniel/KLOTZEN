import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shots/src/components/core/loading_text.dart';
import 'package:shots/src/components/core/scrollable_template.dart';
import 'package:shots/src/components/packs/bottom_bar.dart';
import 'package:shots/src/components/packs/choice.dart';
import 'package:shots/src/constants/hive_strings.dart';
import 'package:shots/src/models/pack_model.dart';
import 'package:shots/src/providers/packs_provider.dart';
import 'package:shots/src/providers/settings_provider.dart';
import 'package:shots/src/services/pack_service.dart';
import 'package:shots/src/styles/colors.dart';
import 'package:shots/src/utils/extensions.dart';
import 'package:shots/src/constants/strings.dart';

class PacksRoute extends StatelessWidget {
  const PacksRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageColor,
      body: ScrollableTemplate(
        showBackButton: true,
        title: AppStrings.packsRouteTitle,
        children: <Widget>[
          FutureBuilder(
            future: loadPacks(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData)
                return LoadingText(text: "Loading packs ...").sliver();
              else
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Choice(pack: snapshot.data[index]);
                    },
                    childCount: snapshot.data.length,
                  ),
                );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  /// Loading all packs so that they can be displayed.
  /// When all the packs are being loaded, all cards are also loaded
  Future<List<Pack>> loadPacks(BuildContext context) async {
    // Loading all packs from metadata.yml
    List<Pack> packs = await PackService.loadPacks();

    //Show normal/!normal Packs.
    String modeType = SettingsService.getModeTye();
    if (modeType == ModeTypes.kifferMode) {
      packs.removeWhere((element) => element.normalPack);
    }
    if (modeType != ModeTypes.kifferMode) {
      packs.removeWhere((element) => !element.normalPack);
    }

    // all these packs go into the unselected packs yaml
    // they will be manually selected by the user
    final packsProvider = Provider.of<PacksProvider>(context, listen: false);
    packsProvider.loadPacks(packs);

    // un comment below to test the loading indicator widget
    // await Future.delayed(Duration(seconds: 10));

    return packs;
  }
}
