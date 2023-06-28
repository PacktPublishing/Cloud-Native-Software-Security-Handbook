package kubernetes.authz 
default allow = false 

allow { 
    input.method == "get" 
    input.path = ["api", "v1", "namespaces", namespace, "secrets"] 
    namespace := input.params["namespace"] 
} 

allow { 
    input.method == "list" 
    input.path = ["api", "v1", "namespaces", namespace, "secrets"] 
    namespace := input.params["namespace"] 
} 