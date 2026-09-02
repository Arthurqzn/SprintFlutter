# Como abrir o projeto corretamente

1. Extraia o ZIP.
2. No VS Code, use **File > Open Folder**.
3. Selecione a pasta que contém `pubspec.yaml`.
4. No Explorer devem aparecer `lib`, `android`, `pubspec.yaml` e `README.md`.
5. Abra o terminal nessa pasta.
6. Rode:

```bash
flutter pub get
flutter run
```

**Não abra apenas a pasta `android/`.** Ela faz parte do projeto Flutter e é usada para a compilação Android.
