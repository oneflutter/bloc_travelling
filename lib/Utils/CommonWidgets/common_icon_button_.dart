import 'package:bloc_travelling/Utils/CommonMethods/app_color_.dart';
import 'package:flutter/material.dart';

class CommonFunctions {
  static commonIconButton({
    final Decoration? decoration,
    final Widget? child,
    final Widget? icon,
  }) {
    return Container(
      decoration: decoration ??
          BoxDecoration(
            border: Border.all(
              color: AppColor.pinkMain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
      child: child ??
          IconButton(
            onPressed: () {},
            icon: icon ?? const Icon(Icons.flight, color: AppColor.pinkMain),
          ),
    );
  }

  static customEditText({
    FocusNode? focusNode,
    TextEditingController? editController,
    String? labelText,
    Key? formKey,
    bool? isFieldEmpty,
    String? Function(dynamic value)? validation,
    TextInputAction? textInputAction,
    TextInputType? inputType,
    bool? isPasswordType,
    String? hintText,
    bool? isRead,
    Widget? suffixIcon,
    String? prefixIcon,
    Null Function(bool)? onFocusChange,
    Null Function(dynamic value)? onChanged,
    String? initialValue,
  }) {
    return Focus(
      onFocusChange: onFocusChange,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: textInputAction,
        keyboardType: inputType,
        controller: editController,
        focusNode: focusNode,
        initialValue: initialValue,
        validator: validation,
        obscureText: isPasswordType ?? false,
        onChanged: onChanged,
        readOnly: isRead ?? false,
        style: const TextStyle(color: AppColor.pinkMain, fontSize: 16, fontFamily: "", fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: const TextStyle(color: AppColor.black, fontFamily: "", fontSize: 14),
          // suffix: suffixIcon,
          suffixIcon: Padding(padding: const EdgeInsets.all(12), child: suffixIcon),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: Colors.pink),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}



// class CommonIconButton extends StatelessWidget {
//   final Decoration? decoration;
//   final Widget? child;
//   final Widget? icon;
//
//   const CommonIconButton({
//     super.key,
//     this.decoration,
//     this.child,
//     this.icon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: decoration ??
//           BoxDecoration(
//             border: Border.all(
//               color: AppColor.pinkMain,
//             ),
//             borderRadius: BorderRadius.circular(10),
//           ),
//       child: child ??
//           IconButton(
//             onPressed: () {},
//             icon: icon ?? const Icon(Icons.flight, color: AppColor.pinkMain),
//           ),
//     );
//   }
// }
