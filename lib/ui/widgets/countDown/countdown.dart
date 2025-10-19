import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../utils/color.dart';

class CountDown extends StatelessWidget {
  const CountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      decoration: BoxDecoration(
        color: AppColor.primaryColors,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(Icons.flash_on, color: Colors.amber),
              Text(
                'FLASH DEAL',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TimerCountdown(
                      descriptionTextStyle: TextStyle(fontSize: 0),

                      timeTextStyle: TextStyle(color: AppColor.primaryColors),
                      format: CountDownTimerFormat.daysOnly,
                      endTime: DateTime.now().add(Duration(days: 825)),
                      onEnd: () {
                        print("Timer finished");
                      },
                    ),
                  ),
                ),
                Text('Hours', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TimerCountdown(
                      descriptionTextStyle: TextStyle(fontSize: 0),

                      timeTextStyle: TextStyle(color: AppColor.primaryColors),
                      format: CountDownTimerFormat.hoursOnly,
                      endTime: DateTime.now().add(Duration(hours: 3)),
                      onEnd: () {
                        print("Timer finished");
                      },
                    ),
                  ),
                ),
                Text('Hours', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TimerCountdown(
                      descriptionTextStyle: TextStyle(fontSize: 0),

                      timeTextStyle: TextStyle(color: AppColor.primaryColors),
                      format: CountDownTimerFormat.minutesOnly,
                      endTime: DateTime.now().add(Duration(minutes: 52)),
                      onEnd: () {
                        print("Timer finished");
                      },
                    ),
                  ),
                ),
                Text('Mins', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TimerCountdown(
                      descriptionTextStyle: TextStyle(fontSize: 0),

                      timeTextStyle: TextStyle(color: AppColor.primaryColors),
                      format: CountDownTimerFormat.secondsOnly,
                      endTime: DateTime.now().add(Duration(seconds: 52)),
                      onEnd: () {
                        print("Timer finished");
                      },
                    ),
                  ),
                ),
                Text('Sec', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),



          Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
