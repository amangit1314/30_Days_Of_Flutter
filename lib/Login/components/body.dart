import 'package:catelog_app/Login/components/background.dart';
import 'package:catelog_app/SignUp/sign_up.dart';
import 'package:catelog_app/components/already_have%20an_account_acheck.dart';
import 'package:catelog_app/components/rounded_button.dart';
import 'package:catelog_app/components/rounded_input_field.dart';
import 'package:catelog_app/widgets/custom_button.dart';
import 'package:catelog_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String phoneNo;
  FocusNode _blankFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(_blankFocusNode);
      },
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Number",
                child: buildCustomTextFieldForMobileNo(),
              ),
              RoundedButton(
                text: "GET OTP",
                child: buildCustomButtonForSendOTPButton(context),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  CustomTextField buildCustomTextFieldForMobileNo() {
    return CustomTextField(
        maxLength: 10,
        hintText: 'Enter 10 digit mobile no.',
        inputType: TextInputType.phone,
        onSaved: ((value) {
          var phoneNo = '+91$value';
        }),
        validator: (value) {
          if (value.length < 10 || value.length > 10) {
            return "Invalid";
          } else {
            print(value.length);
            var _formKey;
            _formKey.currentState.save();
            return null;
          }
        });
  }

  CustomButton buildCustomButtonForSendOTPButton(BuildContext context) {
    return CustomButton(
        text: 'Send OTP',
        onPressed: () {
          var _formKey;
          if (_formKey.currentState.validate()) {
            var phoneNo;
          }
        });
  }
}
