# macOS ejector

This tool is designed to **prevent file systems from being mounted on macOS.**

By default, this is accomplished by unmounting any filesystem which is detected as being mounted within /Volumes/

The idea is that this will prevent prevent casual automounting of physical drives without needing to make changes to the systems automount or fstab configuration. 

The ejector tool is intended for use on a locked down system (access to the terminal has been prevented). If you require unmounting of volumes beyond the scope of the /Volumes/ directory, then edit the eject.sh script `/root/Library/Application Support/Ejector/eject.sh` and uncomment the lines so that scanning for mounted file systems will also be performed by the df tool.

**Note : macOS ejector has not been tested with custom automounts.** If you have manually configured automounts, the proceed with caution you may have unexpected results.

Bug fixes, suggestions and additions to  are warmly welcomed. As such, if you are aware of a way to mount file system which will not be detected / ejected, then submit a pull request or open an issue.



