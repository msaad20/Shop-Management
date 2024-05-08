import 'package:flutter/services.dart';

class PriceTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final String text =
        newValue.text.replaceAll(',', ''); // Remove existing commas
    final int newTextLength = text.length;
    int selectionIndex = newValue.selection.baseOffset;

    final StringBuffer newText = StringBuffer();
    for (int i = newTextLength - 1; i >= 0; i--) {
      if ((newTextLength - (i + 1)) % 3 == 0 && i != newTextLength - 1) {
        newText.write(',');
        if (selectionIndex > i) {
          selectionIndex++;
        }
      }
      newText.write(text[i]);
    }

    return TextEditingValue(
      text: newText.toString().split('').reversed.join(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }

  int toInt(String text) {
    final String removeComma = text.replaceAll(',', '');
    final intText = int.parse(removeComma);
    return intText;
  }
}
