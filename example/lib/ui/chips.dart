import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class ChipsTestPage extends StatefulWidget {
  const ChipsTestPage({super.key});

  @override
  State<ChipsTestPage> createState() => _ChipsTestPageState();
}

class _ChipsTestPageState extends State<ChipsTestPage> {

  final List<String> _filters = <String>[];
  int? selectedIndex;
  int inputs = 3;
  int? _value = 1;
  bool favorite = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OwChipWidget.assist(
              label: "Um guia para você (assistente)",
              onPressed: () {},
            ),
            OwChipWidget.choice(
              label: "Um guia para você (choice)",
              onSelected: (value) {},
            ),
            OwChipWidget.filter(
              label: "Um guia para você (filter)",
              onSelected: (value) {},
            ),
            OwChipWidget.input(
              label: "Um guia para você (input)",
              onSelected: (value) {},
            ),
            OwChipWidget.suggestion(
              label: "Um guia para você (suggestion)",
              onPressed: () {},
            ),
            Wrap(
              spacing: 5.0,
              children: ExerciseFilter.values.map((ExerciseFilter exercise) {
                return OwChipWidget.filter(
                  label: exercise.name,
                  selected: _filters.contains(exercise.name),
                  leading: Icons.abc_outlined,
                  showCheckmark: false,
                  onSelected: (bool value) {
                    setState(() {
                      if (value) {
                        if (!_filters.contains(exercise.name)) {
                          _filters.add(exercise.name);
                        }
                      } else {
                        _filters.removeWhere((String name) {
                          return name == exercise.name;
                        });
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Wrap(
              spacing: 5.0,
              children: ExerciseFilter.values.map((ExerciseFilter exercise) {
                return OwChipWidget.filter(
                  label: exercise.name,
                  selected: _filters.contains(exercise.name),
                  showCheckmark: false,
                  onSelected: (bool value) {
                    setState(() {
                      if (value) {
                        if (!_filters.contains(exercise.name)) {
                          _filters.add(exercise.name);
                        }
                      } else {
                        _filters.removeWhere((String name) {
                          return name == exercise.name;
                        });
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 35),
            OwChipWidget.assist(
              leading: favorite ? Icons.favorite : Icons.favorite_border,
              label: 'Save to favorites',
              onPressed: () {
                setState(() {
                  favorite = !favorite;
                });
              },
            ),
            const SizedBox(height: 35),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 5.0,
              children: List<Widget>.generate(
                inputs,
                (int index) {
                  return OwChipWidget.input(
                    label: 'Person ${index + 1}',
                    selected: selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        if (selectedIndex == index) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = index;
                        }
                      });
                    },
                    onDeleted: () {
                      setState(() {
                        inputs = inputs - 1;
                      });
                    },
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 35),
            Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(
                3,
                (int index) {
                  return ChoiceChip(
                    label: Text('Item $index'),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : null;
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
