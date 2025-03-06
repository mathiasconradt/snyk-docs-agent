When your Snyk audit logs are being forwarded to AWS CloudTrail Lake, you can access them with the AWS CloudTrail Lake Query functionality. You can use this example query to get started:
sql
select 
    eventtime, 
    eventdata.useridentity, 
    eventdata.eventname,
    eventdata.additionaleventdata
from <EVENT-DATA-STORE-ID>
order by eventTime desc
limit 10
Replace <EVENT-DATA-STORE-ID> with the ID of the event data store that is associated with the Snyk integration in AWS CloudTrail Lake.
