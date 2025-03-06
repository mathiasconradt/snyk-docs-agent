echo ""
echo ""
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" 
echo "Detected jars ($detected_count) - does not include transitive dependencies:"
echo ""
if [ $ -gt 0 ]; then
   printf "$"
fi
echo ""
echo ""
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" 
echo "Undetected jars ($undetected_count) - not found on Maven Central:"
echo ""
if [ $ -gt 0 ]; then
   printf "$"
fi
```
The following is a Windows batch script for scanning JARs in all subfolders, run from a scanjar.bat file.
To use this script, you must have installed the Snyk CLI.
batch
REM Usage:    
REM For example: scanjar.bat "C:\workspace\app" "myapp" 
SET WORKSPACE=%1 
SET REMOTE_REPO_URL=%2 
for /R %WORKSPACE% %%f in (*.jar) do cmd /c snyk monitor --scan-unmanaged --remote-repo-url=%REMOTE_REPO_URL% --file=%%f --project-name=%%f
An example follows of the result shown in the Snyk UI after you use these scripts with REMOTE_REPO_URL set to "econnect".
Result of scanning unmanaged JAR files
