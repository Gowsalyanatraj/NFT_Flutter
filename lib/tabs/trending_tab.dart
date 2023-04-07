import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
        imagePath:
            'https://i.pinimg.com/564x/8a/be/be/8abebee4779dba7f2f824b069d86ae87.jpg');
  }
}
