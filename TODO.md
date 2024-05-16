
# TODO

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
- [DOC] add ops section

- [DATAMODEL] table to track activities info coming from activity/ API
    - activity_id, SummaryActivity, sha256
- [DATAMODEL] table to track activity data from activities/{id} API
    - activity_id, DetailedActivity
- [DATAMODEL] table for tokens

- [PYTHON] scaffolding of python sources
- [PYTHON] features
    - authentication
    - token refresh
    - activity info
 
- [OPS] Zalando Postgres operator https://github.com/zalando/postgres-operator/tree/master?tab=readme-ov-file

- [ELASTIC] [OPS] Kubernetes Elasticsearch deployment
    - set limits and check memory mapping
    - check image pulling parameters: uf-not-present?
    
- [API] study strava models https://github.com/strava/go.strava/blob/master/streams.go