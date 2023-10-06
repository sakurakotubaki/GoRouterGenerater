# route_generate

```bash
flutter pub add \
  flutter_riverpod \
  riverpod_annotation \
  dev:riverpod_generator \
  dev:build_runner \
  dev:custom_lint \
  dev:riverpod_lint
```

```bash
flutter pub add \
  freezed_annotation \
  --dev build_runner \
  --dev freezed \
  json_annotation \
  --dev json_serializable
```

## build_runnerをmakefileで実行する

```Makefile
.PHONY: build_runner
build_runner:
  flutter pub run build_runner watch --delete-conflicting-outputs
```

Makefileでbuild_runnerを実行する
```bash
make build_runner
```