import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  /// Optional: Form title
  final String? formTitle;
  /// Contents of the form
  /// Any widgets can be inserted, but it is recommended to use the following:
  ///   - [CustomInput] for inputs
  final List<Widget> formContent;
  /// Optional: FormState Global Key.
  /// Mainly used for form validation
  final GlobalKey<FormState>? formKey;
  const CustomForm({
    this.formTitle,
    required this.formContent,
    this.formKey,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ThemeSingleton.defaultTheme!.colorScheme.surface,
                  border: Border.all(
                    width: 2,
                    color:
                        ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  children: [
        
                    // Form Head (Title)
                    if(formTitle != null && formTitle!.isNotEmpty)
                      Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              // width: .5,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          formTitle!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
        
                    // Form Body
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        spacing: 16,
                        children: formContent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}