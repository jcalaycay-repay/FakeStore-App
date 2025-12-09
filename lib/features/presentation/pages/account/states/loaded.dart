part of AccountPageLibrary;

class AccountLoadedPage extends StatelessWidget {
  final UserModel user;
  const AccountLoadedPage({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accountContext = context.read<AccountPageCubit>();

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 32,
          // Sections
          children: [
            // User Detail Section
            Column(
              spacing: 12,
              children: [
                // ProfilePicture
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(168),
                    ),
                    border: Border.all(
                      width: 2,
                      color: ThemeManager.colorScheme.primary,
                    ),
                  ),
                  child: Icon(
                    Icons.account_circle,
                    size: 160,
                    color: ThemeManager.colorScheme.primary,
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

                // GestureDetector(
                //   onTap: () => log("pressed"),
                //   child: Container(
                //     padding: EdgeInsets.symmetric(
                //       horizontal: 32,
                //       vertical: 12,
                //     ),
                //     decoration: BoxDecoration(
                //       border: BoxBorder.all(
                //         width: 2,
                //         color: theme.colorScheme.primary,
                //       ),
                //       borderRadius: BorderRadius.all(Radius.circular(32)),
                //     ),
                //     child: Text(
                //       "Edit Profile",
                //       style: theme.textTheme.labelLarge!.copyWith(
                //         color: theme.colorScheme.primary,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ),
                // ),
                OutlinedButton(
                  onPressed: () => log("pressed"),
                  child: Text('Edit Profile'),
                ),
              ],
            ),

            /// Section 2:
            ///   ShippingDetails
            ///   ProductListing,
            SectionWrapper(
              children: [
                ListTile(
                  title: Text('Your Orders'),
                  trailing: Icon(
                    Icons.chevron_right
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () => context.pushNamed(
                    'productListing',
                    extra: user
                  ),
                  title: Text('Product Listing'),
                  trailing: Icon(
                    Icons.chevron_right
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ],
            ),
            SectionWrapper(
              children: [
                ListTile(
                  title: Text('Settings'),
                  trailing: Icon(
                    Icons.chevron_right
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                ListTile(
                  title: Text('Notifications'),
                  trailing: Icon(
                    Icons.chevron_right
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                ListTile(
                  title: Text('Privacy Policy'),
                  trailing: Icon(
                    Icons.chevron_right
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ],
            ),

            TextButton(
              onPressed: () => accountContext.logout(),
              child: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
