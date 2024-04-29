# Development
FROM node:19-alpine as dev

WORKDIR /app/client
COPY package.json /app/client/package.json
COPY pnpm-lock.yaml /app/client/pnpm-lock.yaml

RUN npm install -g pnpm
RUN pnpm install

COPY . .

# Set the port and expose it
ENV PORT 3000
EXPOSE 3000

CMD ["pnpm", "run", "dev"]

# Build
FROM node:19-alpine as build
WORKDIR /app/client
COPY . .

RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run build

# Production
FROM node:19-alpine as prod
WORKDIR /app/client
COPY --from=build /app/client/build /app/client/build
COPY src /app/client/src
COPY package.json /app/client/package.json
COPY pnpm-lock.yaml /app/client/pnpm-lock.yaml

RUN npm install -g pnpm
RUN pnpm install --prod

# Set the port and expose it
ENV PORT 3000
EXPOSE 3000

CMD ["node", "build"]

