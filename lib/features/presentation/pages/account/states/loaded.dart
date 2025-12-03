part of AccountPageLibrary;

class AccountLoadedPage extends StatelessWidget {
  final UserModel user;
  const AccountLoadedPage({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accountContext = context.read<AccountPageCubit>();

    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32,
            // Sections
            children: [
              // User Detail Section
              Column(
                spacing: 12,
                children: [
                  // ProfilePicture
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(168),
                      ),
                      border: Border.all(
                        width: 2,
                        color: ThemeSingleton.defaultTheme!.colorScheme.primary,
                      ),
                    ),
                    child: Icon(
                      Icons.account_circle,
                      size: 160,
                      color: ThemeSingleton.defaultTheme!.colorScheme.primary,
                    ),
                  ),

                  // Profile Details
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        user.name.fullname,
                        style: theme.textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                      Text(
                        user.email,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: () => log("pressed"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          width: 2,
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: Text(
                        "Edit Profile",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Section 2:
              ///   ShippingDetails
              ///   ProductListing,
              SectionWrapper(
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Your orders'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Product Listing'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SectionWrapper(
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Settings'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Notifications'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Privacy Policy'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //     Expanded(
          //       child: Container(
          //         alignment: Alignment.bottomCenter,
          //         child: TextButton(
          //           onPressed: () => accountContext.logout(),
          //           child: Text("Log Out"),
          //         ),
          //       ),
          //     ),
        ),
      ),
    );
  }
}
