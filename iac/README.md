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

## Local setup

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
### Kubernetes dashboard
```Bash
minikube dashboard -p <PROFILE_NAME> --url
```

## Destroy
```Bash
terraform destroy
```

# Developer Toolchain
Package provides following scripts:

- scripts/terraform-lint.sh

# Additional resources:
