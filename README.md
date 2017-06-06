## DEPRECATED.

## Because Xcode 9 has built in this feature :D 🎉

### NOTE
Since Xcode 8, all third party plug-ins are prohibited. This plug-in won't work by default on
Xcode version higher than 8. There are some ways to workaround it, but for security reasons,
I don't recommend it.

However, I'll try my best to continue supporting future Xcode versions here.

### What's this
Xcode's Open Quickly(shortcut: `cmd`+`shift`+`o`) is a very convenient tool. You can go around by keeping your hands on the keyboard.
However, it only supports the arrow key navigation, which means you have to move you right hand out of the main area.

This plug-in brings the Open Quickly the lost control-n/p(down/up) navigating.

> In my opinion, it's not hard at all to support the control-n/p navigation in the Open Quickly dialog. I really hope the Xcode team would add this lost function in the future.

### Installation
You can either

* Use [Alcatraz](http://alcatraz.io/)
* Download(Clone) the source and build it(`cmd` + `B`) in Xcode.

Then restart Xcode.

### Uninstallation
Just delete:

    ~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/OpenQuicklyCtrlNP.xcplugin
