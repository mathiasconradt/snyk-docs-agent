To automatically add these variables to the environment, Snyk Language Server searches for the following files, with the order determining precedence. If the executable is not called from an already configured environment (for example, via zsh -i -c 'snyk-ls'), you can also specify the config file with the -c command line flag for setting the required variables. Snyk Language Server reads the following files in the given precedence and order, not overwriting the already loaded variables.
given config file via -c flag
<working-dir>/.snyk.env
$HOME/.snyk.env
Any lines that contain an environment variable in the format VARIABLENAME=VARIABLEVALUE are added automatically to the environment if not already there. This adheres to the dotenv format. In the case of .profile, .zshrcand so on, if a variable is directly exported, for example, via export VARIABLENAME=VARIABLEVALUE, it is not loaded. The export would need to be split of and be in its own line, for example
bash
VARIABLENAME=VARIABLEVALUE
export VARIABLENAME
The PATH variable is treated differently frrom all other variables, as it is an aggregate of all PATH variables found in the files and in the environment. Also, the current working directory . is automatically added to the path, so a download of the Snyk CLI into the current working directory by an LSP client would yield a found Snyk CLI for the Language Server.
In addition to configuring variables via config files, Snyk Language Server adds the following directories to the path on Linux and macOS:

/bin
$HOME/bin
/usr/local/bin
$JAVA_HOME/bin

If no JAVA_HOME is set, Snyk Language Server automatically searches for a java executable first in path, then in the following directories, and adds the parent directory of its parent as JAVA_HOME. The following directories are recursively searched:

/usr/lib
/usr/java
/opt
/Library
$HOME/.sdkman
C:\Program Files
C:\Program Files (x86)

The same directories are searched for a Maven executable and the parent directory is added to the path.
