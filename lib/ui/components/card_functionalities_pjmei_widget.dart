import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

class CardFunctionalitiesPjmei extends StatelessWidget {
  const CardFunctionalitiesPjmei(this.modulePjmei, {Key? key, this.onPressed}) : super(key: key);
  final ModulePjmei modulePjmei;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.5 - 20,
        constraints: const BoxConstraints(
          minHeight: 140,
        ),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              modulePjmei.image?['value'],
              width: 45,
              height: 45,
            ),
            const SizedBox(
              height: 4,
            ),
            OwText(
              '${modulePjmei.title}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
