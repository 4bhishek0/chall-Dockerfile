FROM DOCKER_LABEL_FROM_CHALL
ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && \
apt-get update && \
apt-get install -y build-essential jq strace ltrace curl wget rubygems gcc dnsutils netcat gcc-multilib net-tools vim gdb tmux curl gdb-multiarch python python3 python3-pip python3-dev libssl-dev libffi-dev wget git make procps libpcre3-dev libdb-dev libxt-dev libxaw7-dev python3-pip libc6:i386 libncurses5:i386 libstdc++6:i386 && \
pip install capstone requests pwntools r2pipe && \
pip3 install pwntools keystone-engine unicorn capstone ropper && \
mkdir tools && cd tools && \
git clone https://github.com/JonathanSalwan/ROPgadget && \
cd .. && git clone https://github.com/pwndbg/pwndbg && cd pwndbg  && ./setup.sh && \
cd .. && git clone https://github.com/chen-robert/dot-files && cd ./dot-files && cp .vimrc ../ && cp .tmux.conf ../ && cd .. && rm -rf dot-files && \
gem install one_gadget
