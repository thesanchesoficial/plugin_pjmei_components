import 'package:flutter/material.dart';
import 'package:flutter_placeholder_textlines/placeholder_lines.dart';

class RoundLoadingCard extends StatelessWidget {
  const RoundLoadingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 80,
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(80),
                  ),
                  child: PlaceholderLines(
                    count: 1,
                    lineHeight: 80,
                    animate: true,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    maxOpacity: 1,
                    minOpacity: 0.5,
                    minWidth: 1,
                    maxWidth: 1,
                  ),
                ),
                const SizedBox(height: 20),
                PlaceholderLines(
                  count: 1,
                  animate: true,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  maxOpacity: 1,
                  minOpacity: 0.5,
                  minWidth: 1,
                  maxWidth: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
