WREN_VERSION = 0.3.0

.PHONY: example wren-macos wren-linux

wm wren-macos:
	@wget https://github.com/wren-lang/wren-cli/releases/download/${WREN_VERSION}/wren_cli-mac-${WREN_VERSION}.zip
	@unzip -o wren_cli-mac-${WREN_VERSION}.zip
	@rm -f wren_cli-mac-${WREN_VERSION}.zip
	@rm -f readme.md
	@mv wren_cli wren
	@ls

wl wren-linux:
	@wget https://github.com/wren-lang/wren-cli/releases/download/${WREN_VERSION}/wren_cli-linux-${WREN_VERSION}.zip
	@unzip -o wren_cli-linux-${WREN_VERSION}.zip
	@rm -f wren_cli-linux-${WREN_VERSION}.zip
	@rm -f wren_cli-linux-${WREN_VERSION}/readme.md
	@mv wren_cli-linux-${WREN_VERSION}/wren_cli wren
	@rm -rf wren_cli-linux-${WREN_VERSION}
	@ls

e example:
	./wren src/100_doors.wren
