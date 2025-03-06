Use --print-deps when performing open source scans to obtain a detailed list of discovered dependencies in your codebase and their origin source.
In C/C++, this has the additional benefit of identifying the confidence level of a given match. If there is a significant drop (< 90% confidence), it is likely the file has been modified and may not be the original source. Consider investigating if that is the case.
snyk test --unmanaged --print-deps
The list is printed before the issues list, as shown in the following image:
View dependency lists
