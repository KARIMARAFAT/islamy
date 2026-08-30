import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/features/home/widgets/custom_design_tab.dart';

class HadeethTab extends StatefulWidget {
  const HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  int currentPage = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        if ((_controller.page ?? 0) % 10 != 0) {
          currentPage = (_controller.page ?? 0).toInt();
        }
      });
      print(">>>${currentPage}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomDesignTab(
      imagePath: AppConsts.hadeethBg,
      child: Expanded(
        child: PageView.builder(
          controller: _controller,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: currentPage != index ? 40 : 20,
              ),
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: AppColors.goldColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(AppConsts.hadeethCard, fit: BoxFit.fill),
                    Column(
                      spacing: 10,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'data',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'data',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
