FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html