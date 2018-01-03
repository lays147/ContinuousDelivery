### Commands

- Root of todobackend - to build the dev image
```
docker build -t todobackend-dev -f docker/dev/Dockerfile .
```
- Use a volume cache
```
docker run -v /tmp/cache:/cache --entrypoint true --name cache todobackend-dev
```
- Pass cache to the container
```
docker run --rm --volumes-from cache  todobackend-dev
```
- Use custom test settings
```
docker run --rm -e DJANGO_SETTINGS_MODULE=todobackend.settings.test --volumes-from cache  todobackend-dev
```
