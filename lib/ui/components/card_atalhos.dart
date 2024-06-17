import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardAtalhos extends StatelessWidget {

  const CardAtalhos({super.key, 
    this.title,
    this.icon,
    this.image,
    this.onPressed,
    this.selectedColor,
    this.labelColor,
    this.selecionado = false,
    this.height,
    this.border = BorderSide.none,
  });
  final String? title;
  final String? image;
  final IconData? icon;
  final bool selecionado;
  final Function()? onPressed;
  final Color? selectedColor;
  final Color? labelColor;
  final double? height;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 8),
            ),
            backgroundColor: WidgetStateProperty.all(
              selecionado
                ? selectedColor ?? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondaryContainer,
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: border ?? BorderSide.none,
                borderRadius: BorderRadius.circular(50)),
            ),
            elevation: WidgetStateProperty.all(0),
          ),
          onPressed: onPressed,
          child: Container(
            constraints: BoxConstraints(
              minHeight: height ?? 0,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon == null
                    ? const SizedBox()
                    : Icon(
                        icon,
                        size: 21,
                        color: selecionado
                            ? labelColor ?? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                      ),
                icon == null || title == null
                    ? const SizedBox()
                    : const SizedBox(width: 10),
                image == null ? SizedBox() : (image!.contains('.svg') ? SvgPicture.asset(image!, semanticsLabel: image, height: 21,) : Image.asset(image!, height: 18)),
                image == null ? const SizedBox() : const SizedBox(width: 10),
                title == null
                    ? const SizedBox()
                    : OwText(
                        title!,
                        style: TextStyle(
                          color: selecionado
                              ? labelColor ?? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
