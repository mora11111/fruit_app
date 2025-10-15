import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_color.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(height: 29,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        const SizedBox(height: 43,),
      ],
    );
  }
}
