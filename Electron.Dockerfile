FROM node:13.12.0-buster as build

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY install-packages.sh ./
RUN ./install-packages.sh

COPY package.json ./
RUN yarn install

COPY . ./
RUN npm run build

# production environment
RUN useradd --create-home appuser
# WORKDIR /home/appuser

# COPY --from=build /app/build /home/appuser/build
# COPY --from=build /app/node_modules /home/appuser/node_modules

# USER appuser
