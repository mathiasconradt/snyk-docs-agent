The following query enhances security coverage by revealing unmatched sources, pinpointing situations where the HttpServletRequest parameter in theWebServlet's doPost method is not linked to known sinks, thus identifying gaps in data handling.
starlang
PRED:AnySource and not DataFlowsInto<Taint<PRED:AnySource, PRED:None, PRED:AnySink>>
