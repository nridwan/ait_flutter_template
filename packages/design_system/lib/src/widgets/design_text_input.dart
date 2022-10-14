import 'package:flutter/material.dart';

import '../../design_system.dart';

class DesignTextInput extends StatelessWidget {
  const DesignTextInput({
    super.key,
    this.errorText,
    this.initialText,
    this.suffixIcon,
    required this.hint,
    this.disabled = false,
    this.onChanged,
  });
  final String hint;
  final String? errorText;
  final String? initialText;
  final Widget? suffixIcon;
  final bool disabled;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    String textInput = initialText ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: textInput.isNotEmpty,
          child: DesignText.body1(
            hint,
            args: DesignTextStyleArgs(fontWeight: mediumFont),
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          key: Key(textInput),
          initialValue: textInput,
          style: DesignTextStyle.body1.copyWithArgs(
            DesignTextStyleArgs(
              fontWeight: FontWeight.w500,
            ),
          ),
          enabled: !disabled,
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: disabled ? DesignColors.neutral20 : DesignColors.white,
            errorText: errorText,
            errorStyle: DesignTextStyle.caption,
            enabledBorder: _metaBorder(DesignColors.neutral40),
            disabledBorder: _metaBorder(DesignColors.neutral40),
            focusedBorder: _metaBorder(DesignColors.primaryBase),
            errorBorder: _metaBorder(DesignColors.dangerBase),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            hintText: hint,
            hintStyle: DesignTextStyle.body1.copyWithArgs(
              DesignTextStyleArgs(
                color: DesignColors.neutral60,
                fontWeight: mediumFont,
              ),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _metaBorder(Color borderColor) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(6),
      ),
    );
  }
}
