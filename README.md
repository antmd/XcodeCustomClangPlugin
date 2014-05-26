XcodeCustomClangPlugin
======================

A plugin that will integrate a custom version of Clang into Xcode 5

This plugin assumes the custom clang has root /usr/local/clang (with bin, lib, etc. underneath).

Because of a quirk in Xcode, you need to make a symlimk as follows, if you ever plan on compiling C++:

cd /usr/local
ln -s clang clang++

The plugin has an array of DVTPlugInCompatibilityUUIDs in its Info.plist. When a new Xcode is released, the new UUID will need to be added to the list.

To Install
==========

type 'make'

If your custom clang is in a different location from /usr/local/clang, then you will have to adjust the above instructions; change the Makefile where indicated, and search/replace all occurrences in CustomClang.xcplugin/Contents/Resources/Custom Clang.xcspec
