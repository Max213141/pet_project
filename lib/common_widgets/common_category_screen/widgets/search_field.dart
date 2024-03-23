import 'package:flutter/material.dart';
import 'package:life_sync/utils/decorations.dart';
import 'package:life_sync/utils/styles/styles.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.send,
        controller: _controller,
        focusNode: _focusNode,
        // cursorHeight: computedHeight(context, 17),
        onTap: () {
          // updateState();
        },
        textAlignVertical: TextAlignVertical.center,
        onChanged: (String text) {
          // query = text.trim();
          // setState(() {});
        },
        onSubmitted: (String text) {
          // query = text.trim();
          // if (query.length > 2) {
          //   BlocProvider.of<SearchHistoryCubit>(context).addQuery(query);
          //   updateState(_focusNode.unfocus);
          // }
        },
        onEditingComplete: () {
          // if (query.length > 2) {
          //   BlocProvider.of<SearchHistoryCubit>(context).addQuery(query);
          //   updateState(_focusNode.unfocus);
          // }
        },
        maxLines: 1,
        autocorrect: true,
        textAlign: TextAlign.start,
        style: MentalHealthTextStyles.text.mainCommonF18,
        decoration: InputDecoration(
          filled: true,

          fillColor: const Color(0xFFEEEEEE).withOpacity(.75),
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          alignLabelWithHint: false,
          border: OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            borderSide: BorderSide.none,
          ),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.transparent)),
          // enabledBorder: OutlineInputBorder(),
          // errorBorder: OutlineInputBorder(),
          contentPadding: const EdgeInsets.all(15),
          // disabledBorder: OutlineInputBorder(),
          counterText: '',
          // counterStyle: SlivkiTextStyles.none,
          errorText: '',
          // errorStyle: SlivkiTextStyles.none,
          helperText: '',
          // helperStyle: SlivkiTextStyles.none,
          hintText: 'Pomosch',
          // hintStyle: MentalHealthTextStyles.text.searchHint,
        ),
      ),
    );
  }
}
