
## Role is set of permission on resource

apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: development 
  name: pod-reader
rules:
- apiGroups: [""] # "" indicates the core API group
  resources: ["pods","deployment","daemonset"]
  verbs: ["get", "watch", "list"]  


## above role mapped to LDAP(IAM) 
---
apiVersion: rbac.authorization.k8s.io/v1
# This role binding allows "jane" to read pods in the "default" namespace.
# You need to already have a Role named "pod-reader" in that namespace.
kind: RoleBinding
metadata:
  name: read-pods
  namespace: default
subjects:
# You can specify more than one "subject"
- kind: group 
  name: dev # "name" is case sensitive
  apiGroup: rbac.authorization.k8s.io
roleRef:
  # "roleRef" specifies the binding to a Role / ClusterRole
  kind: Role #this must be Role or ClusterRole
  name: pod-reader # this must match the name of the Role or ClusterRole you wish to bind to
  apiGroup: rbac.authorization.k8s.io


## assign role to test (apply deployment manifest file and get the results)
--- 
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: deployment-apply-get
rules:
- apiGroups: [""] # "" indicates the core API group
  resources: ["deployment"]
  verbs: ["get", "apply"]  

## above role mapped to test user 
--- 
apiVersion: rbac.authorization.k8s.io/v1
# This role binding allows "jane" to read pods in the "default" namespace.
# You need to already have a Role named "pod-reader" in that namespace.
kind: RoleBinding
metadata:
  name: deployment-apply 
  namespace: default
subjects:
# You can specify more than one "subject"
- kind: user 
  name: test  # "name" is case sensitive
  apiGroup: rbac.authorization.k8s.io
roleRef:
  # "roleRef" specifies the binding to a Role / ClusterRole
  kind: Role #this must be Role or ClusterRole
  name: deployment-apply-ge # this must match the name of the Role or ClusterRole you wish to bind to
  apiGroup: rbac.authorization.k8s.io





  ## Role and ClusterRoles
  ## RoleBinding and ClusterRoleBinding  



## topics 
   secret 
   configmap 
   statefull set 
   PV and PVC 
   pod autoscaling(resource quota) and vertical scaling  