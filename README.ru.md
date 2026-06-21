# <p align="center">Jan</p>

<p align="center">
  <strong>Коллекция AI-альтеров для OpenWebUI, вдохновлённая игрой The Alters (Ян Дольский).</strong>
</p>

<p align="center">
  <img src="agents/jan-assistant/avatar.png" alt="Jan Ассистент" width="80">
  <img src="agents/jan-developer/avatar.png" alt="Jan Разработчик" width="80">
  <img src="agents/jan-psychologist/avatar.png" alt="Jan Психолог" width="80">
  <img src="agents/jan-scientist/avatar.png" alt="Jan Учёный" width="80">
</p>

<p align="center">
  <a href="README.md"><img src="https://flagcdn.com/w20/us.png" width="20"> English</a> | <strong><img src="https://flagcdn.com/w20/ru.png" width="20"> Русский</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Версия-1.0.0-blue?style=for-the-badge" alt="Версия">
  <img src="https://img.shields.io/badge/Модели-11-green?style=for-the-badge" alt="Модели">
  <img src="https://img.shields.io/badge/Лицензия-ISC-purple?style=for-the-badge" alt="Лицензия">
  <img src="https://img.shields.io/badge/Платформа-OpenWebUI-orange?style=for-the-badge" alt="Платформа">
</p>

## Содержание

- [Обзор](#обзор)
- [Концепция альтеров](#концепция-альтеров)
- [Каталог моделей](#каталог-моделей)
- [Структура проекта](#структура-проекта)
- [Начало работы](#начало-работы)
- [Переносимость](#переносимость)
- [Добавление нового альтера](#добавление-нового-альтера)
- [Лицензия](#лицензия)

## Обзор

Jan -- это коллекция AI-личностей (альтеров) для OpenWebUI и совместимых LLM-платформ. Каждый альтер представляет собой одну и ту же базовую языковую модель, настроенную через уникальный системный промпт, профиль возможностей и аватар.

Альтеры созданы как **практические инструменты**: разработчик ПО, доктор (медицинское просвещение), юрист (правовая информация), психолог (эмоциональная поддержка), фитнес-тренер и другие.

## Концепция альтеров

Название и идея проекта вдохновлены игрой The Alters от 11 Bit Studios, где Ян Дольский создаёт альтернативные версии себя, чтобы выжить на враждебной планете. Каждый альтер обладает уникальными навыками и характером, но все они -- один и тот же человек.

В том же духе каждый альтер Jan -- это одна и та же AI-модель, различающаяся только **системным промптом** и **настройками возможностей платформы**:

- Никакого дообучения или GPU не требуется.
- Добавление нового альтера -- это редактирование текста, а не развёртывание модели.
- Каждый альтер работает с любой базовой моделью (DeepSeek, GPT, Claude, Llama, Mistral).

## Каталог моделей

| Альтер | Описание | Базовая модель | Применение |
|--------|----------|----------------|------------|
| Assistant | Нейтральный персональный ассистент | DeepSeek V4 Flash | Исследования, задачи, анализ данных |
| Constructor | Инженер-строитель | DeepSeek V4 Flash | Ремонт, деревообработка, инструменты |
| Cook | Шеф-повар и рецепты | DeepSeek V4 Flash | Кулинария, выпечка, планирование меню |
| Developer | Разработчик ПО | DeepSeek V4 Flash | Код, ревью, отладка, архитектура |
| Doctor | Медицинское просвещение | DeepSeek V4 Flash | Симптомы, профилактика, анатомия |
| Lawyer | Правовая информация | DeepSeek V4 Flash | Контракты, права, процедуры |
| Policeman | Безопасность и правопорядок | DeepSeek V4 Flash | Процедуры, безопасность, декларация |
| Politician | Политический аналитик | DeepSeek V4 Flash | Политика, управление, дипломатия |
| Psychologist | Психолог и поддержка | DeepSeek V4 Flash | Тревога, отношения, самооценка |
| Scientist | Учёный-исследователь | DeepSeek V4 Flash | Физика, биология, методология |
| Trainer | Фитнес-тренер | DeepSeek V4 Flash | Тренировки, техника, привычки |

## Структура проекта

```
jan/
  agents/                # Одна папка на альтера/личность
    jan-assistant/       # avatar.png + системные промпты + экспорты OpenWebUI
    jan-constructor/     # + skills/
    jan-cook/
    jan-developer/
    jan-doctor/          # + knowledge/ и skills/
    jan-lawyer/
    jan-policeman/
    jan-politician/
    jan-psychologist/
    jan-scientist/       # + skills/
    jan-trainer/
  skills/                # Глобальные/общие навыки (пока пусто)
  templates/             # Шаблоны для переносимости
    openwebui-model-template.json
    librecchat-model-template.md
    lm-studio-model-template.md
    ollama-modelfile-template.md
  docs/
    architecture.md      # Дизайн-решения и философия
    portability-guide.md # Инструкции по экспорту
  scripts/
    fix_ru_imperatives.ps1
  shared/                # Общие глобальные ресурсы
    avatar.fig           # Figma-исходник аватаров
  README.md
  README.ru.md
```

## Начало работы

### Импорт в OpenWebUI

1. Открой твой OpenWebUI.
2. Перейди в **Workspace > Models**.
3. Нажми кнопку импорта (иконка загрузки).
4. Выбери любой `agents/jan-{alter}/openwebui.json`.
5. Модель появится в списке со всеми настроенными возможностями и инструментами.

Можно импортировать все 11 моделей одновременно. Дублирующиеся ID обновляются автоматически.

### Использование модели

1. Начни новый чат.
2. Выбери нужный альтер Jan из списка моделей.
3. Системный промпт уже применён -- альтер будет отвечать в своей роли.

## Переносимость

Каждый альтер определён следующими файлами внутри `agents/jan-{alter}/`:

| Файл | Назначение | Куда переносится |
|------|------------|------------------|
| `system.md` | Системный промпт (текст) | Все платформы |
| `system.ru.md` | Системный промпт (русский) | Все платформы |
| `openwebui.json` | Экспорт для OpenWebUI | Только OpenWebUI |

Для использования на другой платформе:

- **LibreChat**: Создай агента, вставь `.md` в инструкции, подключи плагины.
- **LM Studio**: Создай пресет, вставь `.md` как системный промпт, настрой температуру.
- **Ollama**: Создай Modelfile с блоком `SYSTEM`, собери и запусти.

Подробные инструкции: `docs/portability-guide.md`.

## Добавление нового альтера

1. Скопируй существующую папку альтера (например, `agents/jan-trainer/`).
2. Отредактируй `system.md` -- измени роль, тон, правила поведения и темы.
3. Отредактируй `system.ru.md` -- обнови русский перевод.
4. Отредактируй `openwebui.json` -- обнови id, name, description, capabilities и toolIds.
5. Замени `avatar.png` на соответствующий аватар.

Всё. Никакой сборки, изменений в БД или дополнительной настройки.

Для пустой заготовки используй `templates/openwebui-model-template.json`.

## Лицензия

Этот проект распространяется под лицензией ISC.

<p align="center">
  Сделано с любовью: <a href="https://t.me/nightrunner91">nightrunner91</a>
</p>
