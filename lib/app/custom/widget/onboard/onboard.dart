import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:nubiaville_management/app/util/color/color.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.index,
      required this.onSkip,
      required this.onNext})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final int index;
  final Function() onSkip;
  final Function() onNext;

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              widget.image,
            ),
          )),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(.9)
              ])),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => widget.onSkip(),
                        child: Text(
                          'Skip',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: black),
                        )),
                  ]),
              const Spacer(
                flex: 3,
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline1,
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.subTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontStyle: FontStyle.italic),
                        maxLines: 3,
                      ),
                    ),
                  ]),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black87),
                      ),
                      onPressed: () => widget.onNext(),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Icon(Icons.chevron_right),
                      ))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
