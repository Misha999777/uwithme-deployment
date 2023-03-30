FROM nginxproxy/nginx-proxy:1.0

RUN sed -i 's/proxy_buffering off;//' /app/nginx.tmpl

RUN echo 'proxy_buffer_size 128k;' >> /app/nginx.tmpl
RUN echo 'proxy_buffers 4 256k;' >> /app/nginx.tmpl
RUN echo 'proxy_busy_buffers_size 256k;' >> /app/nginx.tmpl