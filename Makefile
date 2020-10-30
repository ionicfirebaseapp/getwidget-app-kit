
#
env:
	# fvm has bugs, please always use `--global` args.
	fvm use 1.22.2 --global

setup:
	flutter pub get

run:
	flutter run
