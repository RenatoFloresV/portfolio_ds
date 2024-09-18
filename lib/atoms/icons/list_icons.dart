class DsIcons {
  const DsIcons._();

  // Home

  static DsIconData get home => const DsIconData(
        path: 'assets/icons/home/windows_logo.svg',
        semantic: 'A icon windows',
      );

  static DsIconData get notes => const DsIconData(
        path: 'assets/icons/notes.svg',
        semantic: 'A icon pen',
      );

  static DsIconData get checkYellow => const DsIconData(
        path: 'assets/icons/check-yellow.svg',
        semantic: 'A icon pen',
      );
  static DsIconData get checkGrey => const DsIconData(
        path: 'assets/icons/check-grey.svg',
        semantic: 'A icon pen',
      );

  static DsIconData get settings => const DsIconData(
        path: 'assets/icons/home/settings.svg',
        semantic: 'A icon settings',
      );

  static DsIconData get trash => const DsIconData(
        path: 'assets/icons/home/trash.svg',
        semantic: 'A icon trash',
      );

  static DsIconData get folderDark => const DsIconData(
        path: 'assets/icons/home/folder-dark.svg',
        semantic: 'A icon folder',
      );

  static DsIconData get folderLight => const DsIconData(
        path: 'assets/icons/home/folder-light.svg',
        semantic: 'A icon folder',
      );

  static DsIconData get about => const DsIconData(
        path: 'assets/icons/home/about.svg',
        semantic: 'A icon about',
      );

  //Social

  static DsIconData get github => const DsIconData(
        path: 'assets/icons/social/github.svg',
        semantic: 'A icon github',
      );

  static DsIconData get linkedin => const DsIconData(
        path: 'assets/icons/social/linkedin.svg',
        semantic: 'A icon linkedin',
      );

  static DsIconData get facebook => const DsIconData(
        path: 'assets/icons/social/facebook.svg',
        semantic: 'A icon facebook',
      );
}

class DsIconData {
  const DsIconData({required this.path, required this.semantic});

  final String path;
  final String semantic;
}
