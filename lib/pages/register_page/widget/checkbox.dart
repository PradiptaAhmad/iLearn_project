import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/registerC.dart';

class CheckboxWidget extends StatelessWidget {
  static final registerC = Get.put(RegisterC());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => 
        Checkbox(
            value: registerC.isChecked.value,
          onChanged: (bool? newValue) {
              registerC.isChecked.value = newValue!;
          },
          visualDensity: VisualDensity(
            horizontal: -2.0,
            vertical: -2.0,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        ),
        
        Text(
          'By configuring accept our Privacy Policy and Terms of Use',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
