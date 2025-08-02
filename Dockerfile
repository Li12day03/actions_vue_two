# 选择轻量 Node 运行环境
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制依赖定义文件
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目所有文件到镜像内
COPY . .

# 暴露应用端口（根据你的应用端口改）
EXPOSE 3000

# 启动命令，假设用 npm start 启动
CMD ["npm", "start"]
