import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class SharedStoriesModePicker extends StatefulWidget {
  final bool viewModeSelected;
  final Function switchMode;

  const SharedStoriesModePicker(
      {super.key, required this.viewModeSelected, required this.switchMode});
  @override
  State<SharedStoriesModePicker> createState() =>
      _SharedStoriesModePickerState();
}

class _SharedStoriesModePickerState extends State<SharedStoriesModePicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColor.primaryBackgroundColor),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.switchMode();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Switched to cteation mode"),
                      ),
                    );
                  },
                  child: MentalHealthSvgPicture(
                    picture: widget.viewModeSelected
                        ? 'assets/shared_stories/edit.svg'
                        : 'assets/shared_stories/edit_selected.svg',
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    widget.switchMode();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Switched to viewing mode"),
                      ),
                    );
                  },
                  child: MentalHealthSvgPicture(
                    picture: widget.viewModeSelected
                        ? 'assets/shared_stories/view_selected.svg'
                        : 'assets/shared_stories/view.svg',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
