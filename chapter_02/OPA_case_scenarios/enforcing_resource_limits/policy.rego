package kubernetes.resource_limits 
default allow = false 
allow { 
    input.kind == "Pod" 
    pod := input.object 
    containers := [container | container := pod.spec.containers[_]] 
    limits := [container.resources.limits[_]] 
    mem_limit := limits[_].memory 
    cpu_limit := limits[_].cpu 
    mem_limit != "" 
    cpu_limit != "" 
} 