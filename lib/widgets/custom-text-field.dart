import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String lable;
  final String leadingIcon;
  final bool? isPassword;
  late bool obSecure = false;
  CustomTextField({super.key,required this.textEditingController, required this.lable, required this.leadingIcon, this.obSecure = false, this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widget.textEditingController,
        obscureText: widget.obSecure!,
        decoration: InputDecoration(
          hintText: widget.lable,
            hintStyle: TextStyle(
              color: AppColors.GREY
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.GREY),
            ),
          prefixIcon: Container(
            width: 10.w,
            child: Row(
              children: [
                Image.asset(widget.leadingIcon,width: 4.w,color: AppColors.PRIMARY,),
                VerticalDivider(color: AppColors.PRIMARY,),
              ],
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 10,
            maxHeight: 30
          ),
          suffixIcon: widget.isPassword == true ? InkWell(
            onTap: (){
              widget.obSecure = !widget.obSecure;
              setState(() {

              });
            },
            child: widget.obSecure == true ? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility_outlined),
          ) : SizedBox()
        ),
      ),
    );
  }

}
