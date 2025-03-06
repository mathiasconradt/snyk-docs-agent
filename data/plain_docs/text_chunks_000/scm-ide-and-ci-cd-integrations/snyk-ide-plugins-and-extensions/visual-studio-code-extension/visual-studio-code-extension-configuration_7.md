To analyze Projects, the plugin uses the Snyk CLI which requires environment variables:

PATH: the path to needed binaries, for example, to Maven
JAVA_HOME: the path to the JDK you want to use to analyze Java dependencies

Setting these variables only in a shell environment, for example, using ~/.bashrc, is not sufficient, if you do not start the IDE from the command line or create a script file that starts the IDE using a shell environment.

On Windows, you can set the variables using the GUI or on the command line using the setx tool.
On macOS, the process launchd must know the environment variables to launch the IDE from the Finder directly. You can set environment variables for applications launched using the Finder by using the launchctl setenv command, for example, on start-up or through a script you launch at user login.\
  Note that the provision of environment variables to the macOS UI can change between operating system releases, so it may be easier to create a small shell script that launches the IDE to leverage the shell environment that can be defined using ~/.bashrc.
On Linux, updating the file /etc/environment can propagate the environment variables to the Windows manager and UI.
