
# TODO

- [DATAMODEL]
    - table to track activities info coming from activity/ API
        - activity_id, SummaryActivity, sha256
    - table to track activity data from activities/{id} API
        - activity_id, DetailedActivity
    - table for tokens

- [PYTHON]
    - scaffolding of python sources
    - features
        - authentication
        - token refresh
        - activity info

- [API]
    - study strava models https://github.com/strava/go.strava/blob/master/streams.go

- [IAC]
    - [TERRAFORM]
        - manage terraform workspaces
            - test: create two different environment with differences from variable, check if they are really segregated
        - variables and placeholders in cluster definition
            - variable number of nodes
            - variable limits
            - variable names

    - [MINIKUBE]
        - check for minikube node pool support
            - can we define multiple node pools

- [IAC/OPS]
    - procedure + source scaffolding 
        - devise a procedure for iac + ops interconnection, summarize it in README.md

- [OPS] 
     - [POSTGRES]
        - [Zalando Postgres operator](https://github.com/zalando/postgres-operator/tree/master?tab=readme-ov-file)

    - [ELASTIC]
        - set limits and check memory mapping
        - check image pulling policy: `if-not-present`
        - check memory management ([allow_mmap](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-virtual-memory.html))
        - check [Setup your own certificate](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-tls-certificates.html#k8s-setting-up-your-own-certificate)


- [ML]
    - [SERVING]
        - [EMBEDDER] scaffold inference code based on [infinity](https://github.com/michaelfeil/infinity)
        - [LLM] scaffold inference code based on [vLLM](https://docs.vllm.ai/en/stable/getting_started/quickstart.html)