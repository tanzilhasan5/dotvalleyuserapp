import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth_controller.dart';

class CustomChackBox extends StatelessWidget {
  final RememberMeController controller = Get.put(RememberMeController());

  final Color activeColor;
  final Color textColor;
  final String label;

  CustomChackBox({
    super.key,
    this.activeColor = Colors.green,
    this.textColor = Colors.green,
    this.label = "Remember Me?",
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => GestureDetector(
        onTap: controller.toggleRemember,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                border: Border.all(color: activeColor, width: 1.5),
                borderRadius: BorderRadius.circular(3),
                color: controller.isRemembered.value ? activeColor : Colors.transparent,
              ),
              child: controller.isRemembered.value
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
