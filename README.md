# flutter_template_v2

Flutter: 3.16.3

Dart 3.2.3

## VSCode Extensions

Awesome Flutter Snippets

Flutter Helpers

Flutter Color

Flutter Tree

Dart (Syntax Highlighting Only)

Dart Barrel Export File Generator

Dart Data Class Generator

Build Runner

## Creating Flutter Project

```
flutter create flutter_template_v2 --org com.draxex.flutter_template
```

Creates flutter project with identified bundle ID.

```
flutter create --template=package common
```

Creates flutter template with the name of common

## Creating Private Widget

```dart
part of '../home_view.dart';

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
```

Call from view widget:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_template_v2/feature/home/view/mixin/home_view_mixin.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return const _HomeAppBar();
  }
}
```

## Define Project Settings

In .vscode > settings.json file, you can define project settings

To learn useful settings, google it

## Dependency Override in pubspec.yaml

```dart
# dependency_overrides: 
#   cupertino_icons: ^1.0.1
```

If the specific package has problems with your project, you can override the version of that dependency with dependency_overrides.  

## Creating Flutter Project

You can save your terminal codes in `filename.sh`

Run scripts in terminal:

```
sh script/filename.sh
```