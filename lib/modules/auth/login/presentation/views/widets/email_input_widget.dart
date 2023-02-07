import 'package:flutter/material.dart';
import 'package:gochep/generated/l10n.dart';
import 'package:gochep/utils/colors.dart';
import 'package:gochep/utils/conts.dart';

class EmailInputWidget extends StatelessWidget {
  final Stream<String> stream;
  final Function(String) onChangeEvent;

  const EmailInputWidget(
      {super.key, required this.stream, required this.onChangeEvent});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) => TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: constPrimaryColor, width: 1),
          ),
          fillColor: HexColor('dfe0e4'),
          filled: true,
          labelText: S.current.email,
          prefixIcon: const Padding(
            padding: fixPaddingX1,
            child: Icon(Icons.email),
          ),
          errorText: snapshot.hasError ? snapshot.error.toString() : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.0),
            ),
          ),
        ),
        onChanged: onChangeEvent,
      ),
    );
  }
}
