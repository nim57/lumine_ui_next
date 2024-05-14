import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumine_project_la/Views/shared/Check_out_Btn.dart';
import 'package:lumine_project_la/Views/shared/appstyle.dart';

class Pageviev extends StatefulWidget {
  const Pageviev({Key? key}) : super(key: key);

  @override
  State<Pageviev> createState() => _PagevievState();
}

class _PagevievState extends State<Pageviev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back,size: 30,),
              SizedBox(width: 100,),
              SizedBox(
                height: 100,
                  width: 100,
                  child: Image.asset("images/image/Logo.jpg",fit: BoxFit.fill,)),
              SizedBox(width: 100,),
              Icon(Icons.search_outlined,size: 30,),
            ],
          ),
          SizedBox(height: 15,),
          SizedBox(
            height:370 ,
            width: 370,
            child: Image.asset("images/image/Screenshot 2024-03-20 011142.png",fit: BoxFit.fill,),
          ),
          SizedBox(height: 15,),
          Text('Oversize crop T-shirts',style: appstyle(30, Colors.black, FontWeight.bold),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text("Size",style: appstyle(25, Colors.black45, FontWeight.w500),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                SizedBox(width:10,),
                Text("S",style: appstyle(20, Colors.black, FontWeight.w500),),
                SizedBox(width:10,),
                Text("M",style: appstyle(20, Colors.black, FontWeight.w500),),
                SizedBox(width:10,),
                Text("L",style: appstyle(20, Colors.black, FontWeight.w500),),
                SizedBox(width:10,),
                Text("XL",style: appstyle(20, Colors.black, FontWeight.w500),),
                SizedBox(width:10,),
                Text("XXL",style: appstyle(20, Colors.black, FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Text("Rs 2,490.00",style: appstyle(25, Colors.black, FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:90),
            child: Row(
              children: [
              Align(
              alignment: Alignment.bottomCenter,
              child: Padding(padding: EdgeInsets.only(top: 12),
                child: CheckoutButton(
                  onTap: () {
                  },
                  label: "Buy Now",
                ),
              ),
            ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(padding: EdgeInsets.only(top: 12),
                    child: CheckoutButton(
                      onTap: () {
                      },
                      label: "Add Cart",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),),
    );
  }
}
