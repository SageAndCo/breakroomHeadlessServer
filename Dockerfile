  FROM debian:bookworm-slim
  RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates libfontconfig1 libx11-6 libxcursor1 libxinerama1 libxi6 libxrandr2 libgl1 \
      && rm -rf /var/lib/apt/lists/*
  WORKDIR /app
  COPY server/ /app/
  RUN chmod +x /app/breakroom_server.x86_64
  CMD ["./breakroom_server.x86_64", "--headless"]
