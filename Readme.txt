Hints:
    - node 1,2  --> t3.medium
    - node 3 --> t3.micro

Kubernetes cluster:
    - node 1 --> master
    - node 2 --> worker node

    --> jenkins as a deployment on node 2
    --> APP as a deployment on node 2 using jenkins pipeline
    
    - cluster has 2 namespaces:
        1- default namespace
        2- jenkins namespace


Ansible:
    - playbooks:
        1- Kubernetes
        2- jenkins deployment on Kubernetes
        3- configure prometheus, node exporter, monitor container, client library and grafana 
           on differnet servergroup 
    - Control node 
    
Terraform:
    Resources:
        - vpc
        - subnets
        - security groups
        - 2 ec2 t3.medium
        - 1 ec2 t3.micro

Jenkins pipelines:
    1- APP pipeline
    2- Terraform pipeline


Monitoring:
    --> prometheus and grafana on isolated node (node 3)
    --> use node exporter, monitor container and client library

APP:
    - Any dockerized nodejs app

Sequence:

1- Terraform for infra
2- Ansible for configuration of kubernetes and jenkins deployment
3- Install ansible on node 3
3- Mainfest files for the kubernetes cluster (deployment, services, namespaces, etc...)
4- Develop the pipeline stages
5- develop the docker file for the app
6- Configure prometheus and grafana on the monitoring node (node 3)


To consider:
    1- Monitoring on isolated node for resource isolation and high availabilty
       away from the production cluster
    2- Start without nat gateways
    