import 'package:flutter/material.dart';

class DefaultInputField extends StatelessWidget {
  const DefaultInputField(
      {Key? key,
      required this.title,
      required this.hint,
      this.textEditingController,
      this.widget})
      : super(key: key);

  final String title;
  final String hint;
  final TextEditingController? textEditingController;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      readOnly: widget == null ? false : true,
                      autofocus: false,
                      controller: textEditingController,
                      style: Theme.of(context).textTheme.titleSmall,
                      decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: Theme.of(context).textTheme.titleSmall,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ),
                widget == null
                    ? Container()
                    : Container(
                        child: widget,
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
