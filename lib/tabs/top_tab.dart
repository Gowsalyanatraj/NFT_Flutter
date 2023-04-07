import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
        imagePath:
            'https://i.pinimg.com/564x/47/1a/23/471a23b277e314b78bbff8e7bf50852b.jpg');
  }
}
