# multi-env-app-tf
This repository manages multiple terraform app environments with Terraform

### Folder Structure
```
.
├── LICENSE
├── README.md
├── environments
│   ├── README.md
│   ├── dev
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   ├── prod
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   └── tfvars
│       ├── dev.tfvars
│       └── prod.tfvars
└── modules
    ├── README.md
    └── s3-module
        ├── main.tf
        └── variables.tf
        
```