import 'package:flutter/material.dart';
import 'package:myshop/utils/farsi_number.dart';

class ProductRank extends StatelessWidget {
  String rank;
  ProductRank({
    required this.rank,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.star_rounded,color: Color(0xffFFDF34),size: 18,),
        Text(("5"" / $rank"),textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.labelSmall!.copyWith(letterSpacing: 0.2,fontSize: 12,color: const Color(0xff8F949A)),)
      ],
    );
  }
}
