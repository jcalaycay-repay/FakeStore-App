part of CartPageLibrary;

class DeleteConfirmationModal extends StatelessWidget {
  const DeleteConfirmationModal({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return 
    
    Dialog(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
                  spacing: 24,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: ThemeManager.colorScheme.errorContainer,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16)
                        )
                      ),
                      child: Icon(
                        Icons.delete_outlined,
                        color: ThemeManager.colorScheme.error,
                        size: 32
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Delete",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'Are you sure you want to delete',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => context.pop(false),
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              decoration: BoxDecoration(
                                color: ThemeManager.colorScheme.surfaceDim,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12)
                                )
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: ThemeManager.colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => context.pop(true),
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              decoration: BoxDecoration(
                                color: ThemeManager.colorScheme.error,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12)
                                )
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  color: ThemeManager.colorScheme.surface,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
      ),
    );
    
    // Center(
    //   child: IntrinsicHeight(
    //     child: Container(
    //       width: MediaQuery.sizeOf(context).width * .75,
    //       padding: EdgeInsets.symmetric(
    //         horizontal: 25,
    //         vertical: 25
    //       ),
    //       decoration: BoxDecoration(
    //         color: ThemeManager.colorScheme.surface,
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(16)
    //         )
    //       ),
    //       child: Stack(
    //         children: [
              
    //           Positioned(
    //             right: 0,
    //             child: GestureDetector(
    //               onTap: () => context.pop(false),
    //               child: Container(
    //                 padding: EdgeInsets.all(4),
    //                 decoration: BoxDecoration(
    //                   color: Colors.grey.shade700,
    //                   borderRadius: BorderRadius.all(
    //                     Radius.circular(20)
    //                   )
    //                 ),
    //                 child: Icon(
    //                   Icons.close,
    //                   color: ThemeManager.colorScheme.surface,
    //                   size: 16,
    //                 )
    //               ),
    //             )
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}