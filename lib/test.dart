import 'package:flutter/material.dart';
import 'package:habitflow/core/managers/asset_manager.dart';
import 'package:habitflow/core/managers/color_manager.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // black
          Container(
            padding: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorManager.accentColor,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(AssetsManager.camera),
                  width: 200,
                  height: 150,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // white
          Container(
            padding: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: ColorManager.accentColor,
                width: 5,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(AssetsManager.socialMedia),
                  width: 200,
                  height: 150,
                  color: ColorManager.accentColor,
                ),
                Text(
                  'data',
                  style: TextStyle(
                    color: ColorManager.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorManager.primaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'data',
                      style: TextStyle(
                        color: ColorManager.backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorManager.secondaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'data',
                      style: TextStyle(
                        color: ColorManager.backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorManager.accentColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'data',
                      style: TextStyle(
                        color: ColorManager.backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
