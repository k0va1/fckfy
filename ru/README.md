# Rails API tempalate

## Требования:

- Ruby> 2.3
- Postgresql 9+

## Шаблон содержит:

- Рельсы без JS, только API
- Postresql
- RSpec + Сборщик соответствий + Json matcher
- Должны ли Matchers
- FactoryBot
- обманщик
- Rubocop
- fast_jsonapi для поддержки спецификации http://jsonapi.org/

## Примечание:

По умолчанию `username` для базы данных разработки устанавливается как ваше текущее имя пользователя в ОС.

## Использование:

```bash
export PROJECT_NAME=YOUR_PROJECT_NAME
export PROJECT_CAMELCASE_NAME=YOUR_PROJECT_CAMELCASE_NAME
git clone https://gitlab.com/kova1/rails_api_template.git ./$PROJECT_NAME && cd $PROJECT_NAME
./init.sh
rm init.sh
```
