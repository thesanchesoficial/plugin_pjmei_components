import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class OwAlertDialog extends StatefulWidget {
  final String title;
  final String? description;
  final Widget? content;
  final String? observation;
  final List<OwButton>? buttons;
  const OwAlertDialog({
    Key? key,
    required this.title,
    this.description,
    this.content,
    this.observation,
    this.buttons,
  }) : super(key: key);

  @override
  State<OwAlertDialog> createState() => _OwAlertDialogState();
}

class _OwAlertDialogState extends State<OwAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: OwTextWidget(widget.title),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OwVisibility(
              visible: widget.description != null,
              child: OwTextWidget(
                "${widget.description}",
              ),
            ),
            OwVisibility(
              visible: widget.content != null,
              child: widget.content ?? const SizedBox(),
            ),
            OwVisibility(
              visible: widget.observation != null,
              child: OwTextWidget(
                "${widget.observation}",
              ),
            ),
          ],
        ),
      ),
      actions: widget.buttons,
    );
  }
}

Future showOwDialog({
  Key? key,
  required BuildContext context,
  required String title,
  String? description,
  Widget? content,
  String? observation,
  List<OwButton>? buttons,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => OwAlertDialog(
      key: key,
      title: title,
      description: description,
      content: content,
      observation: observation,
      buttons: buttons,
    ),
  );
}