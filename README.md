
# Chall-Dockerfile

Dockerfile for debugging and solving ctf pwn challenges. 
## Run 

Copy the Dockerfile and paste it in your chall directory  

##### Build Dockerimage

```bash
docker build -t <name>:<tag> .
```
`.` is used to make docker look at pwd for Dockerfile  
`<name>:<tag>` can something be like `ctf:ubuntu`  

##### Run Dockerimage

```bash
docker run --rm  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name <name> -i <name>:<tag>  
docker run --rm  -d --name <name> -i <name>:<tag>  
```
`--cap-add=SYS_PTRACE --security-opt seccomp=unconfined` is used to disable security mitigatoins such as kaslr, ptrace..  
`-v $PWD:/pwd` ths flag will mount your host pwd to docker pwd which includes chall, src ...  

##### Exec command in Docker

```bash
docker exec -it <name> /bin/bash
```
`-it` is used to provide a interactive shell like thing.

