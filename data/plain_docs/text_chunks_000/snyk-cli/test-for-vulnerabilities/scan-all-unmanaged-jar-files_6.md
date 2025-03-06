if (./$SNYK_CLI_BINARY_NAME monitor --scan-unmanaged --file=$file --project-name=$file --remote-repo-url=$REMOTE_REPO_URL) then
  detected_jars+=$file'\n'
  let detected_count++
else
  undetected_jars+=$file'\n'
  let undetected_count++
fi
done
