import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: Stack(
        children: [
          Positioned(
            top: 50.0, // Adjust top padding as needed
            left: 20.0, // Adjust left padding as needed
            child: IconButton(
              color: Colors.white,
              iconSize: 30,
              icon: RotatedBox(
                quarterTurns: 2, // Rotate 180 degrees (2 quarter turns)
                child: Icon(Icons.arrow_back), // Your icon
              ), // Use the Icons.arrow_back icon
              onPressed: () => Navigator.pop(context), // Pop the current screen
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Image.asset('img/stc.png'),
                  const Text(
                    ' شركة الاتصالات السعودية',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    '٧٠١٠',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Image.asset('img/Overal.png'),
                  const SizedBox(height: 40),
                  builtItem(
                      context: context,
                      title: 'التعريف',
                      text: ' شركة رائدة في مجال الاتصالات في السعودية',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'التعريف',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '-شركة الاتصالات السعودية (STC) مدرجة في السوق المالي السعودي بقيمة سوقية تقدر بـ 60.8 مليار دولار وتمتلك الحكومة السعودية جزء كبير من أسهمه.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'مكرر الارباح',
                      text: '٦٠.٩',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'مكرر الارباح',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '- يقيس مكرر الأرباح علاقة سعر السهم إلى أرباح السهم.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '- يُستخدم لتحديد ما إذا كان سعر السهم مبالغًا فيه أم لا مقارنة بأرباح الشركة.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'يعتبر مؤشرًا على تقييم السوق لأداء الشركة.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'توزيع الأرباح (الربع الاول)',
                      text: '٠.٤٠ ر.س',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'توزيع الأرباح (الربع الأول)',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '- يُشير إلى الأرباح التي يتم توزيعها على المساهمين في الربع الأول من السنة المالية.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '- يعتبر عاملًا مهمًا لجذب المستثمرين وتعزيز ثقتهم في الشركة.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'عائد الارباح السنوية',
                      text: '٪ ٣.٨١ ',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'عائد الأرباح السنوي',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            'يُقيس النسبة المئوية للأرباح التي يتلقاها المستثمرون كتوزيعات على أسهمهم مقابل سعر السهم الحالي.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '- يعكس كفاءة توزيعات الأرباح بالنسبة للمستثمرين.',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'الأداء',
                      text: '٠.٧٠ ر.س',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'الاداء',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            "-يشير إلى كيفية أداء السهم أو الشركة على مدار فترة زمنية معينة.",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "- يمكن قياس الأداء بالنسبة المئوية أو بالقيمة المطلقة للتغير في سعر السهم.",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'القيمة السوقية ',
                      text: '٣٩٨BN',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'القيمة السوقية',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '- القيمة السوقية للأسهم تعبر عن القيمة الإجمالية لجميع الأسهم المتداولة لشركة ما، وتُحسب بضرب سعر السهم الواحد في عدد الأسهم الإجمالي..',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'اعلى سعر',
                      text: '٤١.٨٠ ر.س',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "أعلى سعر",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            " يُشير إلى أعلى سعر تم تداوله لسهم معين خلال فترة زمنية محددة. يمكن أن يكون هذا السعر عند نقطة معينة في اليوم أو على مدار أسبوع أو شهر، وهو يعكس أقصى قيمة تم تحقيقها للسهم خلال تلك الفترة.",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                  builtItem(
                      context: context,
                      title: 'ادنى سعر',
                      text: '٤١.١٠ ر.س',
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "أدنى سعر",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            "يُشير إلى أدنى سعر تم تداوله لسهم معين خلال فترة زمنية محددة. يمكن أن يكون هذا السعر عند نقطة معينة في اليوم أو على مدار أسبوع أو شهر، وهو يعكس أقل قيمة تم تحقيقها للسهم خلال تلك الفترة.",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  builtItem({
    context,
    required String title,
    required String text,
    required Widget widget,
  }) =>
      InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: const Color(0xff30A146),
                    title: widget,
                  ));
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xffD8C97D),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
