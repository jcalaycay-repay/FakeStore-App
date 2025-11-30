part of AccountPageLibrary;

class AccountLoadedPage extends StatelessWidget {
  final User user;
  const AccountLoadedPage({
    required this.user,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accountContext = context.read<AccountPageCubit>();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          spacing: 24,
          children: [
        
            //? Header
            // Text(
            //   "Profile",
            //   style: theme.textTheme.headlineMedium!.copyWith(
            //     fontWeight: FontWeight.bold
            //   ),
            // ),
        
            //? User details
            Column(
              spacing: 12,
              children: [
                //? Profile Picture
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        168
                      ),
                    ),
                    border: Border.all(
                      width: 2,
                      color: theme.colorScheme.primary,
                    )
                  ),
                  child: Icon(
                    Icons.account_circle,
                    size: 160,
                    color: theme.colorScheme.primary,
                  ),
                ),
        
                //? User data
                Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      user.name.full,
                      style: theme.textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        height: 1
                      ),
                    ),
                    Text(
                      user.email,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600
                      ),
                    )
                    
                  ],
                ),
        
                GestureDetector(
                  onTap: () => print("pressed"), 
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12
                    ),
                    decoration: BoxDecoration(
                      border: BoxBorder.all(
                        width: 2,
                        color: theme.colorScheme.primary
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(32)
                      )
                    ),
                    child: Text(
                      "Edit Profile",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ),
      
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () => accountContext.logout(),
                  child: Text(
                    "Log Out"
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}