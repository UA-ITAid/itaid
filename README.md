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
9046ae8a6027   dev-db-ruby-3.1.0-rails-7.0.1    "docker-entrypoint.s…" 5 hours ago   Up 5 hours   0.0.0.0:54321->5432/tcp   itaid-itaid_development-1
542d101a168c   ruby-3.1.0-rails-7.0.1           "sleep infinity"       5 hours ago   Up 5 hours   0.0.0.0:3000->3000/tcp    itaid-itaid-1
ca5bedbda262   test-db-ruby-3.1.0-rails-7.0.1   "docker-entrypoint.s…" 5 hours ago   Up 5 hours   0.0.0.0:54322->5432/tcp   itaid-itaid_test-1
ef33b9949941   mutagenio/sidecar:0.13.1         "mutagen-sidecar"      5 hours ago   Up 5 hours                             itaid-mutagen-1

  docker exec -it 542d101a168c bin/dev
```
де `542d101a168c` ідентифікатор контейнера з проектом зі списку
