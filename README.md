
<title>#git 복사</title>

git clone https://github.com/mogi240/test0506_No1.git

<title>#docker 빌드</title>
root@u1:~/test0506_No1# docker build --rm -t mogi240/my-nginx .
Sending build context to Docker daemon  70.14kB
Step 1/8 : FROM ubuntu
 ---> 1d622ef86b13
Step 2/8 : COPY ./install.sh /
 ---> Using cache
 ---> bac7476acbf0
Step 3/8 : RUN chmod 755 /install.sh
 ---> Using cache
 ---> b06f79c043c0
Step 4/8 : RUN /install.sh
 ---> Using cache
 ---> bd0f72d27d87
Step 5/8 : COPY ./start.sh /
 ---> Using cache
 ---> f4676963dc45
Step 6/8 : RUN chmod 755 /start.sh
 ---> Using cache
 ---> f91fa1f331d1
Step 7/8 : EXPOSE 80
 ---> Using cache
 ---> ba8f461d06aa
Step 8/8 : CMD ["nginx","-g","daemon off;"]
 ---> Running in 58ecb5bd6f36
Removing intermediate container 58ecb5bd6f36
 ---> 31580fa88047
Successfully built 31580fa88047
Successfully tagged mogi240/my-nginx:latest



<title>#docker run</title>
docker run -d --rm --name n1 -p 80:80 mogi240/my-nginx
9ad79ac7b05747aefbc45276b3ca9bb748c1ee1c3f365b4cd7ad4736920437c9

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
root@u1:~/test0506_No1# docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
9ad79ac7b057        mogi240/my-nginx    "nginx -g 'daemon of…"   6 seconds ago       Up 4 seconds        0.0.0.0:80->80/tcp   n1



<title>#docker 웹페이지 접속</title>
root@u1:~/test0506_No1# curl http://localhost:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@u1:~/test0506_No1# 



