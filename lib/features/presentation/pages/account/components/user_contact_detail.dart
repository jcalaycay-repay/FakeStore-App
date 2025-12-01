import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  final IconData icon;
  final String? data;
  const UserDetail({
    required this.icon,
    this.data,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return switch(data != null){
      true => IntrinsicWidth(
         child: Row(
          spacing: 4,
          children: [
            Icon(
              icon,
            color: Colors.grey.shade600
            ),
            Text(
              data!,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600
              ),
            )
          ],
        ),
      ),

      false => SizedBox.shrink(),
    };
  }
}