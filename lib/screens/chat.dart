import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/core/Route.dart';
import 'detailsChat.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff30a146),
          onPressed: () {},
          child: SvgPicture.asset('img/Add.svg')),
      body: Container(
        width: double.infinity,
        color: const Color(0xff0E1210),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'المحادثات',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const DetailsChat());
                  },
                  child: buildItem(
                      name: 'تركي ال الشيخ',
                      massage: "تبشرين",
                      tame: "منذ ساعه",
                      image: 'img/tu.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider(
                    thickness: .1,
                    color: Color(0xffCBB768),
                  ),
                ),
                buildItem(
                    name: 'نوره القرني',
                    massage: 'السوق مو مره تمام',
                    tame: "منذ ساعه",
                    image: 'img/tu3.png'),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider(
                    thickness: .1,
                    color: Color(0xffCBB768),
                  ),
                ),
                buildItem(
                    name: 'غلا المالكي ',
                    massage: 'كم سعر سهم stc',
                    tame: "منذ ساعه",
                    image: 'img/tu4.png'),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider(
                    thickness: .1,
                    color: Color(0xffCBB768),
                  ),
                ),
                buildItem(
                    name: 'غلا المالكي ',
                    massage: 'كيف الاسهم معاك؟',
                    tame: "منذ ساعه",
                    image: 'img/tu5.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildItem({
  required String name,
  required String massage,
  required String tame,
  required String image,
}) =>
    Row(
      children: [
        Image.asset(image),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              massage,
              style: const TextStyle(
                color: Color(0xff455154),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              tame,
              style: const TextStyle(
                color: Color(0xff797C7B),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff30A146),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  '5',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
