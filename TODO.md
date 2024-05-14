
TODO:

DATA MODEL
- table to track activities info coming from activity/ API
    - activity_id, SummaryActivity, sha256
- table to track activity data from activities/{id} API
    - activity_id, DetailedActivity
- table for tokens

PYTHON
- scaffolding of python sources
- features
    - authentication
    - token refresh
    - activity info

Kubernetes
- which service kind is the most appropriate for a service not to be reached from outside the cluster?
- pgadmin-configmap:
    - how to inject:
        "Username" --> POSTGRES_USER
        "Passfile" --> containing POSTGRES_PASSWORD

- Kubernetes Elasticsearch deployment

API:
- https://github.com/strava/go.strava/blob/master/streams.go