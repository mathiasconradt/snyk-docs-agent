Business criticality 
User-defined Project attribute representing the subjective business impact of the respective application. For more information, see Project attributes.
| Possible input value | Score impact                             |
| -------------------- | ---------------------------------------- |
| Critical           | Impact subscore increases.               |
| High               | Impact subscore is not affected.         |
| Medium             | Impact subscore decreases.               |
| Low                | Impact subscore decreases significantly. |

When you apply a business criticality attribute to a Project, a retest is required for the Risk Scores to incorporate the new data. When no Business Criticality is assigned, the Impact subscore will not be affected. 

When the business criticality for a Project is not configured, the high default value is used so that the subscore remains unaffected.
