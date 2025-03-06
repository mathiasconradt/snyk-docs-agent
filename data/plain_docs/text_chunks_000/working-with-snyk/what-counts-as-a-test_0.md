Capitalized terms used but not defined herein shall have the meaning as set forth in the Customer’s purchase agreement or other applicable documentation found on snyk.docs.io.
Snyk keeps separate test counts and sets limits for each Snyk product: Snyk Open Source, Snyk Code, Snyk Container, and Snyk IaC.
If you are on the Free Snyk plan, you may run unlimited tests for public repositories, and limited tests on private repositories. Recurring tests may only be run on a weekly basis. See Plans and pricing for more details about Snyk plans. For information about unlimited tests against public repositories, see Running out of tests. If you reach your limit or would like to increase your recurring test frequency, you can upgrade your plan.
The Snyk Open Source, Snyk Code, Snyk IaC, and Snyk Container applications allow customers to scan and run tests on their code-based assets as applicable based on the functionality of the application. The Customer’s Order Form indicates a plan type that comes with a certain number of tests as part of the Customer’s Subscription Allocation (Tests).
This document outlines what Snyk counts as a test, in order for the customer to understand its usage against its subscription allocation. Currently, test limits are focused on Snyk Open Source and Snyk Code Applications only, as is the discussion of test limits in this document.
There are two main types of tests:
Recurring: Tests are triggered by the Snyk application, based on the customer’s configurations, and occur at a set cadence (daily or weekly). These tests are triggered by the Web UI, CLI, or API and implemented through a cron job, typically within the SCM.
Manual: Tests are triggered by the Customer through a specific election within the application. These tests can occur at any cadence within the available functionality of the application. These tests can be triggered in a number of different ways, including:
API - triggered by API call
CLI - triggered by CLI commands
IDE - triggered by save or autosave (may vary by IDE)
Pull request test or check - triggered by generation of a new Pull Request
Push tests - triggered by the customer's SCM
Web UI Import or retest - triggered by a button in WebUI
Each customer’s specific usage and configurations are different from others; therefore Snyk uses the criteria described here to determine what constitutes a test.
