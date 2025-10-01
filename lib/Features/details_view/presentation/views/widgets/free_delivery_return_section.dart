
import 'package:flutter/material.dart';

class FreedeliveryReturn extends StatelessWidget {
  const FreedeliveryReturn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.local_shipping_outlined),
          title: const Text("Free delivery"),
        ),
        ListTile(
          leading: const Icon(Icons.refresh_outlined),
          title: const Text("Free return"),
          subtitle: const Text("View return policy"),
        ),
      ],
    );
  }
}
