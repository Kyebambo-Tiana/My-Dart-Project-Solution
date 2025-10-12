<!-- Copilot instructions for AI agents working on this Flutter workspace -->
# Quick, action-oriented instructions for code generation

This repository contains a Flutter workspace with two small apps: the root app (`flutter_application_1`) and a nested app at `birthday_wish_app/`.

Keep changes minimal, follow the existing style, and prefer edits to `lib/` sources and the specific package's `pubspec.yaml` only. Avoid modifying native platform folders (android/, ios/, macos/, windows/) unless explicitly asked.

Key facts the agent should know:

- Project type: Flutter app (Dart SDK >= 3.9.2). See `pubspec.yaml` at the repository root and `birthday_wish_app/pubspec.yaml`.
- Linting: uses `package:flutter_lints/flutter.yaml` via `analysis_options.yaml`. Follow the default Flutter lint rules unless a test or file explicitly ignores them.
- Entrypoints: `lib/main.dart` in the root and in `birthday_wish_app/` are the primary app entrypoints. Use these to locate UI structure and theming examples (e.g., `ThemeData`, `DefaultTabController`).

Conventions and patterns discovered:

- Minimal, widget-driven UI: screens are built with StatelessWidget and StatefulWidget patterns in `lib/main.dart` examples. Keep widget constructors immutable where appropriate.
- Theme & color: main apps define `ThemeData` with `primarySwatch` or `colorScheme` at the top-level `MaterialApp` — follow this when adding themed widgets.
- Assets & fonts: no custom assets or fonts are registered in `pubspec.yaml`. If adding assets, update the correct package `pubspec.yaml` and ensure paths are relative to that package directory.

Build, run, and test workflows (developer commands):

- Common Flutter commands to use in this workspace root or package subfolder:

  - Install dependencies: `flutter pub get`
  - Run on device/emulator: `flutter run` (from the package folder containing `pubspec.yaml`)
  - Analyze code: `flutter analyze`
  - Run tests: `flutter test` (there are existing `test/widget_test.dart` files in subfolders)

- Avoid running platform-specific build steps (Gradle/Xcode) unless addressing native integration; prefer `flutter run` & `flutter build` for app-level tasks.

Integration points and external dependencies:

- This project only depends on `flutter` and `cupertino_icons` in `pubspec.yaml`. There are no third-party HTTP, database, or backend SDKs to mock.
- Native platform folders (android/, ios/, etc.) are present but contain standard generated Flutter host code — change them only when implementing platform channels or plugin updates.

When editing code:

- Keep edits scoped: change files inside `lib/` for UI and business logic. If adding package-level dependencies, update the specific `pubspec.yaml` (root or `birthday_wish_app/`) and run `flutter pub get`.
- Prefer small diffs with clear intent. Add unit or widget tests when behavior is non-trivial; tests live under `test/` next to package roots.
- Follow lints from `analysis_options.yaml` — AI should not disable lints globally.

Examples to reference while coding:

- Root app entry: `lib/main.dart` — demonstrates `MaterialApp`, `ThemeData`, and `DefaultTabController` usage.
- `birthday_wish_app/lib/main.dart` — another entrypoint with the standard counter example. Use it when adding new features scoped to that package.

If you need clarification or more context (app flows, intended features, or how to run on a specific device), ask the human maintainer before changing native code or CI configuration.

Please run `flutter analyze` after any substantive code change and include test updates when adding behavior. Report errors from the analyzer and failing tests in the PR description.
