import 'package:dotted_border/dotted_border.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileUploadArea extends StatelessWidget {
  final ImageSource source;
  final Function(XFile? value)? callback;

  const FileUploadArea({required this.source, this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ImagePicker()
            .pickImage(source: ImageSource.camera)
            .then((value) => callback!(value) ?? () {});
      },
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: Radius.circular(16),
          strokeWidth: 2,
          dashPattern: [5, 5],
          color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
        ),
        child: Container(
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_photo_alternate_outlined,
                size: 32,
                color: Colors.grey.shade700,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'Drop your image here, or select ',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Click to browse',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ThemeSingleton.defaultTheme!.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
