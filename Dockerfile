# Use the official LinuxServer Sonarr image
FROM lscr.io/linuxserver/sonarr:version-4.0.14.2939

RUN apk add --update --no-cache sshpass
RUN apk add --update --no-cache openssh

WORKDIR /app
COPY download-config.sh /app/download-config.sh
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/download-config.sh /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]

# Set environment variables
ENV TZ=Etc/UTC
ENV PUID=1000
ENV PGID=1000

# Expose the necessary port
EXPOSE 8989

# Define volumes
VOLUME ["/config", "/seagateexos1", "/seagateexos2"]