import 'package:flutter/material.dart';
import 'package:klotzen/src/components/core/scrollable_template.dart';
import 'package:klotzen/src/constants/strings.dart';
import 'package:klotzen/src/utils/extensions.dart';

import '../../constants/strings.dart';
import '../../styles/text_styles.dart';

class TermsRoute extends StatelessWidget {
  const TermsRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollableTemplate(
      showBackButton: true,
      title: AppStrings.termsRouteTitle,
      children: <Widget>[
        Text(AppStrings.terms, style: TextStyles.body1).sliver(),
      ],
    ).scaffold();
  }
}
