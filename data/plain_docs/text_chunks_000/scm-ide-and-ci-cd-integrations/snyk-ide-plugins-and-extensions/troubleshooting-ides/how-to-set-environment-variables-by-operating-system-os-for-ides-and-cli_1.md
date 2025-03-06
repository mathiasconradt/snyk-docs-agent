There are several places where you can set environment variables.
For details, see HowTo: Set an Environment Variable in Mac OS X - /etc/\launchd.conf - Dowd and Associates.

~/.profile: use this for variables you want to set in all programs launched from the terminal. Note that, unlike on Linux, all shells opened in the Terminal.app are login shells.
~/.zshrc: this is invoked for shells that are not login shells. Use this for aliases and other things that need to be redefined in subshells, not for environment variables that are inherited.
/etc/profile: this is loaded before ~/.profile, but is otherwise equivalent. Use it when you want the variable to apply to terminal programs launched by all users on the machine (assuming they use bash).
Your user’s launchd instance: this applies to all programs launched by the user, GUI, and CLI. You can apply changes at any time by using the setenv command in launchctl. In theory, you should be able to put setenv commands in ~/.launchd.conf, and launchd would read them automatically when the user logs in, but in practice support for this file was never implemented. Instead, you can use another mechanism to execute a script at login and have that script call launchctl to set up the launchd environment.
/etc/launchd.conf: this is read by launchd when the system starts up and when a user logs in. These variables affect every single process on the system, because launchd is the root process. To apply changes to the running root launchd you can pipe the commands into sudo launchctl.

The fundamental things to understand are:

Environment variables are inherited by a process’s children at the time they are forked.
The root process is a launchd instance, and there is also a separate launchd instance per user session.
launchd allows you to change its current environment variables using launchctl; the updated variables are then inherited by all new processes it forks from then on.

You can verify if IntelliJ runs using this environment variable using ps eww -o command <PID> | tr ' ' '\\n' command.
