FROM ubuntu:22.04
RUN apt -y update && apt -y install git && git clone https://github.com/tung3110/FFmpeg-install.git && bash ./FFmpeg-install/install.sh
ARG cmd1
ENV cmd=$cmd1
WORKDIR /root/
CMD [ "ffmpeg",cmd]
