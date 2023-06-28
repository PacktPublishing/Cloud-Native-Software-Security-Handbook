package kubernetes.authz 
default allow = false 
allow { 
  input.kind == "Deployment" 
  input.namespace == "default" 
  input.spec.template.spec.containers[_].resources.limits[_].memory <= "512Mi" 
  input.spec.template.spec.containers[_].resources.limits[_].cpu <= "500m" 
} 