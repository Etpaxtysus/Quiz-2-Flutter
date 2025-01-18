import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icon/menu.png',
                height: 40,
                width: 40,
              ),
              Image.asset(
                'assets/icon/search.png',
                height: 40,
                width: 40,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            sectionTitle('Settings'),
            const SizedBox(height: 16),
            settingsItem(
              context,
              'Profile settings',
              'Settings regarding your profile',
              'assets/icon/profile.png',
            ),
            settingsItem(
              context,
              'News settings',
              'Choose your favourite topics',
              'assets/icon/news.png',
            ),
            settingsItem(
              context,
              'Notifications',
              'When would you like to be notified',
              'assets/icon/notifications.png',
            ),
            settingsItem(
              context,
              'Subscriptions',
              'Currently, you are in Starter Plan',
              'assets/icon/subscriptions.png',
            ),
            const SizedBox(height: 24),
            otherTitle('Other'),
            const SizedBox(height: 16),
            settingsItem(
              context,
              'Bug report',
              'Report bugs very easy',
              'assets/icon/bug.png',
            ),
            settingsItem(
              context,
              'Share the app',
              'Share on social media networks',
              'assets/icon/share.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Telegraf',
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
    );
  }

  Widget otherTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Telegraf',
        fontSize: 26,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }

  Widget settingsItem(
    BuildContext context,
    String title,
    String subtitle,
    String iconPath,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                height: 56,
                width: 56,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Telegraf',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'Telegraf',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icon/arrow-forward-circle-outline.png',
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
