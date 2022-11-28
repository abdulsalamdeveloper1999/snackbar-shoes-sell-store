// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class LoginFields extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  var hintText, prefixIcon, suffixIccon;
  bool? obSecure;
  TextEditingController? controller = TextEditingController();
  ValueChanged<String>? onChanged;
  var fieldValidator;
  var onSavedState;

  LoginFields(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.controller,
      this.obSecure = false,
      this.prefixIcon,
      this.suffixIccon,
      this.fieldValidator,
      this.onSavedState})
      : super(key: key);

  @override
  _LoginFieldsState createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        style: kLoginFieldStyle,
        obscureText: widget.obSecure!,
        controller: widget.controller,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon == null
              ? null
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '${widget.prefixIcon}',
                      height: 15,
                    )
                  ],
                ),
          suffixIcon: widget.suffixIccon,
          hintText: '${widget.hintText}',
          hintStyle: kLoginFieldStyle,
          contentPadding: padding,
          border: InputStyling.inputEnableBorder,
          enabledBorder: InputStyling.inputEnableBorder,
          focusedBorder: InputStyling.inputEnableBorder,
        ),
        validator: widget.fieldValidator,
      ),
    );
  }
}
