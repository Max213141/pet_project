import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class CustomFormFieldWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final int? maxLines;
  final int? maxLength;
  const CustomFormFieldWidget({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    this.maxLines = 1,
    this.maxLength,
  });

  @override
  State<CustomFormFieldWidget> createState() => _CustomFormFieldWidgetState();
}

class _CustomFormFieldWidgetState extends State<CustomFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) => widget.validator(value),
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14Grey,
        errorStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14Grey,
        filled: true,
        fillColor: AppColor.authFieldsGray,
        focusedBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            color: AppColor.primaryBackgroundColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            color: AppColor.authFieldsBordersGray,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            color: AppColor.primaryBackgroundColor,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
