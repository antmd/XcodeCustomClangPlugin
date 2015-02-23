# Change the clang install dir here, and in all occurrences in CustomClang.xcplugin/Contents/Resources/Custom Clang.xcspec
CLANG_BASE_DIR := /usr/local/Cellar/llvm/3.5.1

all:
	@[ -e $(CLANG_BASE_DIR)/bin/clang ] || ( echo "Expected a clang install in $(CLANG_BASE_DIR)!"; false; )
	@if [ ! -e "$(HOME)/Library/Application Support/Developer/Shared/Xcode/Plug-ins" ]; then \
		mkdir -p  "$(HOME)/Library/Application Support/Developer/Shared/Xcode/Plug-ins"; \
	fi
	cp -R CustomClang.xcplugin "$(HOME)/Library/Application Support/Developer/Shared/Xcode/Plug-ins"
