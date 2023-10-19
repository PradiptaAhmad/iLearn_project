import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/register_page/widget/btnInput.dart';
import 'package:ilearn_project/pages/register_page/widget/logo.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/register_page/widget/checkbox.dart';
import 'package:ilearn_project/pages/register_page/widget/userinput.dart';

class Regsiter extends StatelessWidget {
  const Regsiter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500
                  )
              ),
            ),
            SizedBox(height: 40),
            InputUser(label: 'First Name', icon: Icons.person, textInputType: TextInputType.name,),
            InputUser(label: 'Last Name', icon: Icons.person, textInputType: TextInputType.name,),
            InputUser(label: 'Email', icon: Icons.mail, textInputType: TextInputType.emailAddress,),
            InputUser(label: 'Password', icon: Icons.lock, textInputType: TextInputType.visiblePassword,),
            CheckboxWidget(),
            SizedBox(height: 15),
            ButtonInputUser(onPressed: (){}),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 150,  // Lebar garis
                  color: peachColor,
                ),
                SizedBox(width: 10,),
                Text('or', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                SizedBox(width: 10,),
                Container(
                  height: 2,
                  width: 150,  // Lebar garis
                  color: peachColor,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Logo(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                SizedBox(width: 10),
                Text("Login", style: TextStyle(
                  color: Color(0xFFFFD1AD)
                ),)
              ],
            )
            // Logo()
          ],
        ),
      ),
    );
  }
}
