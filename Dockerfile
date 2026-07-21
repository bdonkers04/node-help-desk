FROM node:22-alpine
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN corepack enable && pnpm install --prod --frozen-lockfile
COPY . .
RUN mkdir -p uploads
EXPOSE 3000
CMD ["node","src/server.js"]
