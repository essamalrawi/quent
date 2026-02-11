import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../generated/assets.gen.dart';
import 'custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved, this.hintText = "Password"});

  final void Function(String?)? onSaved;
  final String? hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          // print(obscureText);
          setState(() {});
        },
        child: obscureText
            ? SizedBox(
                width: 20,
                height: 20,
                child: Center(
                  child: SvgPicture.asset(Assets.images.icon.showPasswordIcon),
                ),
              )
            : const Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
      ),
      hintText: widget.hintText!,
      textInputType: TextInputType.visiblePassword,
    );
  }
}
