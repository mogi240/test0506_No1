vagrant up
vagrant ssh node1
sudo -i
kubectl run mykube-nginx --image=mogi240/my-nginx --port=80
kubectl scale deployment mykube-nginx --replicas=20
kubectl get deployments
-----------------------------
[root@node1 ~]# kubectl get deployments
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
mykube-nginx   20/20   20           20          21m
