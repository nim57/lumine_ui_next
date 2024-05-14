import 'package:flutter/material.dart';
import 'package:lumine_project_la/Views/shared/appstyle.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key, this.onTap, required this.label,
  });

  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          height: 50,
          width: 120,
          child: Center(
            child: Text(label
              ,style: appstyle(20, Colors.white, FontWeight.bold),),
          ),
        ),),
    );
  }
}
