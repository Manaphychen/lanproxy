# 服务端
```yaml
version: '3.1'
services:
  lanproxy-client:
    image: franklin5/lanproxy-server
    container_name: lanproxy-server
    restart: always
    environment:
      # 配置你的账号
      - LANPROXY_USERNAME=admin
      # 配置你的密码
      - LANPROXY_PASSWORD=admin
    volumes:
      # 用于保存创建的配置文件，避免重启服务后配置消失
      - /usr/local/docker/lanproxy-server/config-data:/root/.lanproxy
    ports:
      - "8090:8090"
      - "4900:4900"
      - "4993:4993"
      - "9000-9100:9000-9100"
```
# 客户端
```yaml
version: '3.1'
services:
  lanproxy-client:
    image: manaphychen/lanproxy-client
    container_name: lanproxy-client
    restart: always
    environment:
      # 这里是在lanproxy后台配置的密钥
      - LANPROXY_KEY=input_your_key
      # 服务器的ip，支持域名
      - LANPROXY_HOST=input_your_host
```
