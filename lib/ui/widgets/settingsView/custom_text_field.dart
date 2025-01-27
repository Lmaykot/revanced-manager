import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:revanced_manager/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController inputController;
  final String label;
  final String hint;
  final Function(String)? onChanged;

  const CustomTextField({
    Key? key,
    required this.inputController,
    required this.label,
    required this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffEF4444);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: inputController,
            onChanged: onChanged,
            keyboardType: TextInputType.text,
            style: TextStyle(
              fontSize: 14,
              color: isDark ? Colors.grey[300] : Colors.black,
            ),
            decoration: InputDecoration(
              label: I18nText(label),
              labelStyle:
                  TextStyle(color: isDark ? Colors.grey[300] : Colors.black),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primary,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gapPadding: 4.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
