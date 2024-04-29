# Requirements
## Configuration
- tflint, see [here](https://github.com/terraform-linters/tflint)
- tfswitch, see [here](https://tfswitch.warrensbox.com/Install/)
- minikube, see
    - [Minikube start](https://minikube.sigs.k8s.io/docs/start/)
    - [Minikube provider](https://registry.terraform.io/providers/scott-the-programmer/minikube/latest/docs)
```Bash
tfswitch
```

## First deploy on an empty project

## Local setup on an already configured project

```Bash
cd iac
terraform init --backend-config=envs/dev.config
tflint --init
```

## Deploy
```Bash
terraform plan --var-file=envs/dev.tfvars -out out.plan
terraform apply out.plan
```

## Minikube commands
Commands to list / start / stop / destroy a profile (a cluster), see [Minikube commands](https://minikube.sigs.k8s.io/docs/commands/stop/) for more.
```Bash
minikube profile list
minikube start -p <PROFILE_NAME>
minikube stop -p <PROFILE_NAME>
minikube delete -p <PROFILE_NAME>
```

## Destroy
```Bash
terraform destroy
```

# Developer Toolchain
Package provides following scripts:

- scripts/terraform-lint.sh

# Additional resources:


# Open points
- [TERRAFORM] manage terraform workspaces
    - test: create two different environment with differences from variable, check if they are really segregated
- [TERRAFORM] variables and placeholders in cluster definition
    - variable number of nodes
    - variable limits
    - variable names
- [MINIKUBE] check for minikube node pool support
    - can we define multiple node pools
- [IAC/OPS] procedure + source scaffolding 
    - devise a procedure for iac + ops interconnection, summarize it in README.md
- [MINIKUBE][KUBERNETES]
    - manage to access the board
    - write procedure in README.md
- [DOC] add ops section
