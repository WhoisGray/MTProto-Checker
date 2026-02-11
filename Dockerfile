FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json* pnpm-lock.yaml* ./
RUN npm ci --omit=dev 2>/dev/null || npm install --omit=dev

COPY app.js ./
COPY images ./images

ENV NODE_ENV=production
ENV PORT=3000
EXPOSE 3000

CMD ["node", "app.js"]
