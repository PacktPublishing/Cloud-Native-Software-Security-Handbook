package main 

default allow = false 

allow { 
  input.kind == "Deployment" 
  input.spec.replicas <= 5 
} 