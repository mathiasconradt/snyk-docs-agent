updatePolicy [string]
Default: daily
How often to download the latest CLI release. Snyk recommends always keeping your CLI installation updated to the latest version. Can be one of the following:

daily - On the first execution of the day
always - On every execution
never - Never update after the initial download
interval:<minutes> - On the execution after more than <minutes> has passed since the last update. For example, interval:60 will update after an hour
