# Requirements
## Configuration
- tflint, see [here](https://github.com/terraform-linters/tflint)
- tfswitch, see [here](https://tfswitch.warrensbox.com/Install/)

```Bash
tfswitch
```

## First deploy on an empty project

### APIs

## Local setup on an already configured project

```Bash
cd iac

terraform init --backend-config=envs/dev.config
# terraform workspace new dev

tflint --init
```

## Deploy
```Bash
terraform plan --var-file=envs/dev.tfvars -out out.plan
terraform apply out.plan
```

```Bash
minikube profile list
minikube delete -p <CLUSTER_NAME>
```

## Destroy
```Bash
terraform destroy
```

# Developer Toolchain
Package provides following scripts:

- scripts/terraform-lint.sh


# Additional resources:
- [Format and mount a non-boot disk on a Linux VM ](https://cloud.google.com/compute/docs/disks/format-mount-disk-linux)
- [Using IAP for TCP forwarding](https://cloud.google.com/iap/docs/using-tcp-forwarding)