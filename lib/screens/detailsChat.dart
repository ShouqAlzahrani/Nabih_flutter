import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DetailsChat extends StatelessWidget {
  const DetailsChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/edit.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xff0D1A12),
                  child: Row(
                    children: [
                      Image.asset('img/tu.png'),
                       Column(
                        children: [
                          Text(
                            'تركي ال شيخ ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            'متصل الان ',
                            style: TextStyle(
                              color: Color(0xff455154),
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              ),
              masseage(
                title: 'وش هالتطبيق الزين ',
              ),
              masseageTo(title: 'الله يسلمك :)'),
              masseageTo(title: 'يسعد مسائك معالي المستشار عساك مبسوط على نبيه ؟'),
              masseage(
                title: 'اي والله وش هالشغل الزين',
              ),
              masseage(
                title: 'حتى اولادي صارو يستخدمونه ',
              ),
              const Spacer(),
              Container(
                color: const Color(0xff0D1B13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          hintText: "أكتب هنا...",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('img/Voice.svg'),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset('img/camera.svg'),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset('img/more.svg'),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

masseage({
  required String title,
}) =>
    Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(color: const Color(0xff024232), borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
masseageTo({
  required String title,
}) =>
    Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: const Color(0xff024232),
          )),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
