import 'package:flutter/material.dart';
import 'package:project_1/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon, required this.validator,
  });

  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final Function(String) validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 40),

      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Icon(icon),
          ),
          hint: Padding(padding: EdgeInsets.only(left: 15), child: Text(hint)),
          filled: true,
          fillColor: Color(0xffF2F2F2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
