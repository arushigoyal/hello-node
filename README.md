#Running Angular app on Open shift

#Bitnami image
1. We have used Bitnami image for nginx server because openshift doesnot allow containers to be run with root access.
   https://medium.com/bitnami-perspectives/non-root-containers-to-show-openshift-some-love-3b32d7218ac6 

2. Bitnami exposes port 8080
3. Copy your minified bundle into /app folder
