import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../common/app/presentation/widgets/buttons/social_sign_in_button.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SocialSignInButton(
      icon: FontAwesomeIcons.google,
      text: 'Sign in with Google',
      onPressed: onPressed,
    );
  }
}
