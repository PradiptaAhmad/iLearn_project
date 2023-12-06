import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/register_controller.dart';

class CheckboxWidget extends GetView<RegisterController> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => 
        Checkbox(
            value: controller.isChecked.value,
          onChanged: (bool? newValue) {
              controller.isChecked.value = newValue!;
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
