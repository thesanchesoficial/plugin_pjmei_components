import 'package:flutter/material.dart';
import 'package:flutter_placeholder_textlines/placeholder_lines.dart';
import 'package:plugin_pjmei_components/ui/ui.dart';

class CardLoadingApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      child: Center(
        child: PlaceholderLines(
          count: 3,
          animate: true,
          color: Theme.of(context).colorScheme.secondaryContainer,
          maxOpacity: 1,
          minOpacity: 0.5,
          minWidth: 0.6,
          maxWidth: 1.0,
        ),
      ),
    );
  }
}

class CardLoadingInfoApi extends StatelessWidget {
  const CardLoadingInfoApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          width: MediaQuery.sizeOf(context).width,
          constraints: const BoxConstraints(
            minHeight: 65,
          ),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              color: Theme.of(context).colorScheme.secondaryContainer),
          child: Center(
            child: PlaceholderLines(
              count: 1,
              animate: true,
              color: Theme.of(context).colorScheme.secondaryContainer,
              maxOpacity: 1,
              minOpacity: 0.5,
              minWidth: 0.6,
              maxWidth: 1.0,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              width: MediaQuery.sizeOf(context).width,
              constraints: BoxConstraints(
                maxHeight: 90,
                maxWidth: MediaQuery.sizeOf(context).width * 0.4,
              ),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Theme.of(context).colorScheme.secondaryContainer),
              child: Center(
                child: PlaceholderLines(
                  count: 1,
                  animate: true,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  maxOpacity: 1,
                  minOpacity: 0.5,
                  minWidth: 0.6,
                  maxWidth: 1.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              width: MediaQuery.sizeOf(context).width,
              constraints: BoxConstraints(
                maxHeight: 90,
                maxWidth: MediaQuery.sizeOf(context).width * 0.4,
              ),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Theme.of(context).colorScheme.secondaryContainer),
              child: Center(
                child: PlaceholderLines(
                  count: 1,
                  animate: true,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  maxOpacity: 1,
                  minOpacity: 0.5,
                  minWidth: 0.6,
                  maxWidth: 1.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(25),
          width: MediaQuery.sizeOf(context).width,
          constraints: const BoxConstraints(
            minHeight: 65,
          ),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              color: Theme.of(context).colorScheme.secondaryContainer),
          child: Center(
            child: PlaceholderLines(
              count: 1,
              animate: true,
              color: Theme.of(context).colorScheme.secondaryContainer,
              maxOpacity: 1,
              minOpacity: 0.5,
              minWidth: 0.6,
              maxWidth: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}

class CardLoadingDashboardHomeApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(25),
                width: MediaQuery.sizeOf(context).width,
                constraints: const BoxConstraints(
                  minHeight: 60,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                child: Center(
                  child: PlaceholderLines(
                    count: 1,
                    animate: true,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    maxOpacity: 1,
                    minOpacity: 0.5,
                    minWidth: 0.6,
                    maxWidth: 1.0,
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            OwGrid.builder(
              runSpacing: 25,
              spacing: 25,
              numbersInRowAccordingToWidgth: [
                150,
                300,
                450,
                600,
                750,
                900,
                1050,
                1200,
                1350
              ],
              itemCount: 10,
              itemBuilder: (context, index) {
                return const RoundLoadingCard();
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CardLoadingApi(),
          ],
        ),
      ),
    );
  }
}
