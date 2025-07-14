# Test workload for Orkal of Funk

Small container image, with a few bash scripts, which allows to easily test differnet Kubernetes security context configurations.

Each script tests a single securityContext flag (or capability), and can be started individually.

I have yet to implement a solution to run multiple checks in a single container, but this would also help to check that a combination of 
security configurations are detected properly.