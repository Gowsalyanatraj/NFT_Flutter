import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: NftCard(
            imagePath:
                'https://i.pinimg.com/564x/46/26/46/46264663951aa7c13ab19c12c9c9c496.jpg'),
      ),
    );
  }
}
