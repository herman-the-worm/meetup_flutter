import 'package:flutter/material.dart';

const kHeight75 = SizedBox(height: 75);
const kHeight60 = SizedBox(height: 60);
const kHeight50 = SizedBox(height: 50);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight15 = SizedBox(height: 15);
const kHeight10 = SizedBox(height: 10);
const kHeight5 = SizedBox(height: 5);

const kWidth50 = SizedBox(width: 50);
const kWidth20 = SizedBox(width: 20);
const kWidth15 = SizedBox(width: 15);
const kWidth10 = SizedBox(width: 10);
const kWidth5 = SizedBox(width: 5);

SizedBox kScaledHeight15(BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
    );
