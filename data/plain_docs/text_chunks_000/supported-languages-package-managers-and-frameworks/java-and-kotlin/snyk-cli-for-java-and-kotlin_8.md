By default, Snyk passes gradle build --no-daemon in the background when running snyk test and snyk monitor on Windows. 
If you see snyk test or snyk monitor fail on other operating systems because of daemon-related issues, try adding the --no-daemon flag to the Snyk command or set GRADLE_OPTS: '-Dorg.gradle.daemon=false'. 
See the Gradle documentation for tips on disabling the daemon.
