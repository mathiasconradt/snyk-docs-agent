issueId = data.newIssues[i].issueData.identifiers.CWE[0];
            }
            double cvssScore = data.newIssues[i].issueData.cvssScore;
            string severity = data.newIssues[i].issueData.severity.ToString().ToUpper();
            string issueSeverity = data.newIssues[i].issueData.severity;
            string descr = data.newIssues[i].issueData.description.ToString();
            if (data.newIssues[i].issueData.description.ToString().Length >= 256)
            {
                descr = data.newIssues[i].issueData.description.ToString().Substring(0, 256);
            }
            descr = descr.Replace("\n", "").Replace("\r", "");
            bool remediationExists = data.newIssues[i].fixInfo.isFixable;
            string remediationRecommendation = "";
            if (remediationExists)
            {
                remediationRecommendation = "upgrade " + pkgName + " to " + data.newIssues[i].fixInfo.fixedIn[0];
            }

            if (i > 0)
            {
                sb.Append(",");
            }

            sb.Append("{");
            sb.Append("  \"artifactURL\": \"" + artifactURL + "\",");
            sb.Append("  \"containerImage\": \"" + containerImage + "\",");
            sb.Append("  \"cvss.score\": \"" + cvssScore + "\",");
            sb.Append("  \"cvssScore\": \"" + cvssScore + "\",");
            sb.Append("  \"disclosureUrl\": \"" + browseUrl + "\",");
            sb.Append("  \"entityLookupValue\": \"" + entityLookupValue + "\",");
            sb.Append("  \"entityType\": \"" + entityType + "\",");
            sb.Append("  \"imageBaseImage\": \"" + data.project.imageBaseImage + "\",");
            sb.Append("  \"imageId\": \"" + data.project.imageId + "\",");
            sb.Append("  \"imagePlatform\": \"" + data.project.imagePlatform + "\",");
            sb.Append("  \"imageTag\": \"" + data.project.imageTag + "\",");
            sb.Append("  \"issueCountsBySeverityCritical\": " + data.project.issueCountsBySeverity.critical + ",");
            sb.Append("  \"issueCountsBySeverityHigh\": " + data.project.issueCountsBySeverity.high + ",");
            sb.Append("  \"issueCountsBySeverityMedium\": " + data.project.issueCountsBySeverity.medium + ",");
            sb.Append("  \"issueCountsBySeverityLow\": " + data.project.issueCountsBySeverity.low + ",");
            sb.Append("  \"issueId\": \"" + issueId + "\",");
            sb.Append("  \"issueInstanceKey\": \"" + repoURL + "\",");
            sb.Append("  \"issueSeverity\": \"" + issueSeverity + "\",");
            sb.Append("  \"issueType\": \"Library Vulnerability\",");
            sb.Append("  \"issueVendorId\": \"" + issueVendorId + "\",");
            sb.Append("  \"message\": \"" + descr + "\",");
            sb.Append("  \"pkgName\": \"" + pkgName + "\",");
            sb.Append("  \"projectName\": \"" + projectName + "\",");
            sb.Append("  \"priorityScore\": " + priorityScore + ",");
            sb.Append("  \"remediation.exists\": \"" + remediationExists + "\",");
            sb.Append("  \"remediationExists\": \"" + remediationExists + "\",");
            sb.Append("  \"remediationRecommendation\": \"" + remediationRecommendation + "\",");
            sb.Append("  \"severity\": \"" + severity + "\",");
            sb.Append("  \"snykIssueType\": \"" + issueType + "\",");
            sb.Append("  \"snykOrigin\": \"" + data.project.origin + "\",");
            sb.Append("  \"source\": \"Snyk\",");
            sb.Append("  \"title\": \"" + title + "\"");
            sb.Append("}");
        }
    }

    sb.Append("]}");

    string payload = sb.ToString();
    payload = payload.Replace(System.Environment.NewLine, ". ");

    if (payload != "")
