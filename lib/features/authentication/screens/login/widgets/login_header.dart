import 'package:flutter/cupertino.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            TTexts.welcomepage1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 46,
              color: Color(0xFF537832),
            ),
          ),
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Center(
          child: Text(
            TTexts.login2,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 36,
              color: Color(0xFF537832),
            ),
          ),
        ),
      ],
    );
  }
}
