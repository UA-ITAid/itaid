# Слава Україні!

Даний проект було створено для залучення IT до волонтерства.

## Як запустити проект

Рекомендовано використовувати Докер, хоча можете спробувати і без нього

1. Встановіть `Docker` та `mutagen-compose`
2. Завантажте проект і запустіть контейнери
```shell
  git pull https://github.com/UA-ITAid/itaid.git
  cd itaid/.devcontainer
  mutagen-compose up -d --build
```
3. Запустіть сервер
```shell
  docker ps
e165b6e1b6c8   dev-db-ruby-3.1.0-rails-7.0.1    "docker-entrypoint.s…"   6 hours ago   Up 6 hours   0.0.0.0:54321->5432/tcp   devcontainer-itaid_development-1
2637019f4883   test-db-ruby-3.1.0-rails-7.0.1   "docker-entrypoint.s…"   6 hours ago   Up 6 hours   0.0.0.0:54322->5432/tcp   devcontainer-itaid_test-1
ba4778553aa3   ruby-3.1.0-rails-7.0.1           "sleep infinity"         6 hours ago   Up 6 hours   0.0.0.0:3000->3000/tcp    devcontainer-itaid-1
  docker exec -it ba4778553aa3 bin/dev
```
де `ba4778553aa3` ідентифікатор контейнера з списку
