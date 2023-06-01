import 'package:educat/Components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 64,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                fillColor: grey,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                fillColor: grey,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                fillColor: grey,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                fillColor: grey,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    ));
  }
}
