# Spring-security OpenShift
# Openshift docker secret

1. oc create secret generic dockerhub \
    --from-file=.dockerconfigjson=${HOME}/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
    
2. oc secrets link default dockerhub --for=pull

3. oc secrets link builder dockerhub

4. oc import-image <image_stream_name>[:<tag>] --from=<docker_image_repo> --confirm

    oc import-image authz-server:1.0.0-SNAPSHOT --from=docker.io/tadartiw/authz-server:1.0.0-SNAPSHOT --confirm

# Image Stream
1. update image stream
    oc import-image authz-server:1.0.0-SNAPSHOT
    
2. to Pull automatically
    oc edit dc authz-server
    imagePullPolicy: Always
    
# DeploymentConfig
1. oc create -f /mnt/hgfs/code_workspace/spring-security/authz-server/src/main/openshift/deploymentConfig.yml