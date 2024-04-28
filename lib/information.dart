import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
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
                  widget: const Column(
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
                  title: 'مكرر الارباح',
                  text: '٦٠.٩',
                  widget: const Column(
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
                  widget: const Column(
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
                  widget: const Column(
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
                  widget: const Column(
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
                  widget: const Column(
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
                  title: 'اعلى سعر',
                  text: '٤١.٨٠ ر.س',
                  widget: const Column(
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
                  widget: const Column(
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

void verification(context) => showDialog(
    context: context,
    builder: (context) => const AlertDialog(
          backgroundColor: Color(0xff30A146),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ));
