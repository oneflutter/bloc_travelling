import 'package:bloc_travelling/Utils/CommonMethods/app_color_.dart';
import 'package:bloc_travelling/Utils/CommonMethods/typography_.dart';
import 'package:bloc_travelling/Utils/CommonWidgets/common_icon_button_.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  backgroundColor: AppColor.lightPink,
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/img_6.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    "User Name",
                    style: gentiumBookPlusText.w600.size(16).black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CommonFunctions.customEditText(hintText: "Name"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CommonFunctions.customEditText(hintText: "Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(AppColor.pinkMain),
                    ),
                    onPressed: () {},
                    child: const Text("Save"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
