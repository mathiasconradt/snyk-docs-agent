Snyk categorizes framework support into two levels: Comprehensive and Partial.
Comprehensive support indicates the following:

Sources and sinks: Snyk has thoroughly identified and included all relevant sources and sinks.
Data flow testing: Extensive testing has been conducted to ensure comprehensive data flow coverage.
Engine support: The Snyk Code engine is fully optimized for this framework.
Limitations: Snyk is unaware of any limitations. If you encounter a false negative, please report it to Snyk Support.

Partial support indicates the following:

Sources and sinks: Snyk coverage is limited, and some sources, sanitizers, or sinks may be missing.
Data flow testing: Snyk has conducted some testing.
Engine support: Compatibility of the engine with this framework is limited, potentially affecting analysis accuracy.
Limitations: False negatives in taint analysis or source and sink identification may still occur.

Partial support for a framework typically involves a mix of these factors. For instance, some sources or sinks may be missing, and while the engine might offer better support, further data flow testing has not been conducted to ensure the analysis is fully reliable.
Snyk continually expands framework coverage and improves the accuracy of analysis.
