
import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/app_styles.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';

class NamePriceFavSection extends StatelessWidget {
  const NamePriceFavSection({
    super.key,
    required this.menModel,
  });

  final MenModel menModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            menModel.name,
            style: AppStyles.styleMedium14(context)
                .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              menModel.price,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.favorite_border, size: 18),
                const SizedBox(width: 4),
                Text("450",
                    style: AppStyles.styleMedium14(context)
                        .copyWith(color: Colors.black54)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
