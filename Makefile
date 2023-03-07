.PHONY: run/build_runner
run/build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: test/golden
test/golden:
	fvm flutter test --update-goldens --tags=golden
