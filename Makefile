.PHONY: setup/app
setup/app:
	fvm install && fvm use
	npm install

.PHONY: run/build_runner
run/build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: test/golden
test/golden:
	fvm flutter test --update-goldens --tags=golden

.PHONY: run/reg-suit
run/reg-suit:
	npx reg-suit run
