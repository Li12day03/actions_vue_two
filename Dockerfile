# 使用官方 nginx 镜像
FROM nginx:alpine

# 复制构建好的静态文件到 nginx 默认目录
COPY dist/ /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]
