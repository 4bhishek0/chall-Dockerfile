# chall-Dockerfile

* Build Dockerimage

   `docker build -t <name>:<tag> .`
   
   `.` is used to make docker look at pwd for Dockerfile.
   
   `<name>:<tag>` can something be like `ctf:ubuntu`
* Run dockerimage 

  `docker run --rm  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name <name> -i ,name>:<tag>`
  
  `--cap-add=SYS_PTRACE --security-opt seccomp=unconfined` is used to disable secuirty mitigations such as kalsr, and ptrace . you can also remove this.
  
  `-v $PWD:/pwd` this flag mount your current pwd to docker pwd which genrally includes the challenge binary , src ..
  
* Exec command in Docker

  `docker exec -it <name> /bin/bash`
  
  `it` is used to provide and interactive shell like thing .
