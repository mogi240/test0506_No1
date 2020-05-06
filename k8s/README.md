
#########################################################################################################
############# 3번문제 ############
############# 3번문제 ############
############# 3번문제 ############
############# 3번문제 ############

#vagrant  UP

ubuntu@u1:~/kubernetes_quickstart$ vagrant up
Bringing machine 'node1' up with 'virtualbox' provider...
Bringing machine 'node2' up with 'virtualbox' provider...
==> node1: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> node1: flag to force provisioning. Provisioners marked to run always will still run.
==> node2: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> node2: flag to force provisioning. Provisioners marked to run always will still run.

#vagrant node1 접속

ubuntu@u1:~/kubernetes_quickstart$ vagrant ssh node1
Last login: Wed May  6 17:12:16 2020 from 10.0.2.2

[vagrant@node1 ~]$ sudo -i

#kubectl 시작

[root@node1 ~]#  kubectl run mykube-nginx --image=mogi240/my-nginx --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/mykube-nginx created

#replicas=20 변경

[root@node1 ~]# kubectl scale deployment mykube-nginx --replicas=20
deployment.extensions/mykube-nginx scaled

#POD 

[root@node1 ~]# kubectl get deployments
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
mykube-nginx   20/20   20           20          21m

