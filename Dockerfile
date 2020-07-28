FROM linuxserver/bookstack

# 创建中文字体目录用于存放宋体字体
RUN mkdir -p /usr/share/fonts/chinese/TrueType
COPY fonts/simsun.ttc /usr/share/fonts/chinese/TrueType/