import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/models/sura_model.dart';

class SuraDetailsPage extends StatefulWidget {
  const SuraDetailsPage({super.key});
  static const String routeName = '/SuraDetailsPage';

  @override
  State<SuraDetailsPage> createState() => _SuraDetailsPageState();
}

class _SuraDetailsPageState extends State<SuraDetailsPage> {
  String suraDetails = '';
  List<String> ayat = [];

  @override
  @override
  Widget build(BuildContext context) {
    final SuraModel suraModel =
        ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (suraDetails.isEmpty) {
      getDetailsData(suraModel.index);
    }
    return Scaffold(
      appBar: AppBar(title: Text(suraModel.enName)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(AppConsts.suraDetails, fit: BoxFit.fill),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  suraModel.arName,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 60),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: ayat
                            .map((e) => TextSpan(text: e + '*'))
                            .toList(),
                        style: TextStyle(
                          color: AppColors.goldColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),

                  //  Text(
                  //   suraDetails,
                ),
                SizedBox(height: 150),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getDetailsData(int index) async {
    String res = await rootBundle.loadString('assets/Suras/${index}.txt');
    res.split('\n');
    setState(() {
      ayat = res.trim().split('\n');
      suraDetails = res;
    });
  }
}
