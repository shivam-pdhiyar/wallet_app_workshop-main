import 'package:flutter/material.dart';

Offset getThrowOffsetFromDragLocation(Offset drag, double min) {
  return Offset(
    drag.dx.abs() / drag.dy.abs() < 0.2 ? 0 : min * drag.dx.sign,
    drag.dy.abs() / drag.dx.abs() < 0.2 ? 0 : min * drag.dy.sign,
  );
}

int getModIndexFromActiveIndex(
  int index,
  int activeIndex,
  int count, {
  bool isReversed = true,
}) {
  final modIndex = (index - activeIndex) % count;
  return isReversed ? count - 1 - modIndex : modIndex;
}

double getScaleByIndex(int index, double min, double max, int count) {
  return min + ((max - min) / count) * (index + 1);
}
