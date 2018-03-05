# ejector

Ejector is a tool to prevent file systems from being mounted on macOS. 

This is accomplished by unmounting any filesystem which is detected as being mounted within /Volumes/

It is intended for use on a locked down system without access to the terminal. The idea is that this will prevent prevent casual automounting of physical drives without needing to make changes to the systems automount or fstab configuration.

If you require unmounting of volumes beyond the scope of the /Volumes/ directory, then edit the eject.sh script (located within `/root/Library/Application Support/Ejector/eject.sh`) and uncomment the lines so that scanning for mounted file systems will also be performed by the df tool.

Bug fixes, suggestions and additions to  are warmly welcomed. As such, if you are aware of a way to mount file system which will not be detected / ejected, then submit a pull request or open an issue.



