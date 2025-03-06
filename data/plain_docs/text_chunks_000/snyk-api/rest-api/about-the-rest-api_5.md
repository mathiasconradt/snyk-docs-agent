Errors conform to the JSON:API specification and include path-based information to indicate the root cause as follows:
json
{
    "errors": [
        {
            "id": "0418e907-a89e-4736-9a5b-91a2022e0899",
            "detail": "Unknown query parameter 'unknown'",
            "status": "400",
            "source": {
                "parameter": "unknown"
            }
        }
    ]
}
