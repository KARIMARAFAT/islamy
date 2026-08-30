import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/features/home/tabs/quran_tab/view/most_recently_view.dart';
import 'package:islamt/features/home/tabs/quran_tab/view/suras_list_view.dart';
import 'package:islamt/features/home/tabs/quran_tab/widgets/custom_text_field.dart';
import 'package:islamt/features/home/widgets/custom_design_tab.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDesignTab(
      imagePath: AppConsts.quranBg,
      child: Expanded(
        child: Column(
          spacing: 20,
          children: [
            CustomTextField(
              hintText: 'Surah Name',
              prefix: SvgPicture.asset(
                AppConsts.quran,
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                  AppColors.goldColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  children: [const MostRecentlyView(), const SurasListView()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
