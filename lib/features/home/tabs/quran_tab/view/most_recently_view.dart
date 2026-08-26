import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';

class MostRecentlyView extends StatelessWidget {
  const MostRecentlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Most Recently',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: AppConsts.family,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // padding: EdgeInsets.only(left: 20),
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 290,
                child: Card(
                  margin: EdgeInsets.only(left: index == 0 ? 20 : 10),
                  color: AppColors.goldColor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      top: 8,
                      right: 8,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Al-Anbiya',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: AppConsts.family,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'الأنبياء',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: AppConsts.family,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '112 Verses',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppConsts.family,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            AppConsts.mostRecent,
                            height: 135,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
