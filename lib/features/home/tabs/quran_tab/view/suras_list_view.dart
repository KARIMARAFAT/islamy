import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 0,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Suras List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: AppConsts.family,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.brightness_5, color: Colors.white, size: 50),
                  Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: AppConsts.family,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              title: Text(
                'Al-Fatiha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConsts.family,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '7 Verses',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConsts.family,
                  color: Colors.white,
                ),
              ),
              trailing: Text(
                'الفاتحه',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConsts.family,
                  color: Colors.white,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              endIndent: 65,
              indent: 65,
              color: AppColors.goldColor,
            );
          },
          itemCount: 10,
        ),
      ],
    );
  }
}
