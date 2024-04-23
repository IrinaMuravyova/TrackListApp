<p align="center">
      <img src="https://i.ibb.co/qmqv7ZY/2024-04-13-17-42-50.png" width="726">
</p>

<p align="center">
   <img src="https://img.shields.io/badge/Engine-XCode v15.3-blueviolet">
   <img src="https://img.shields.io/badge/Version-v1.0-blue">
   <img src="https://img.shields.io/badge/License-MIT-green">
</p>

## About

Проект создавался для обучения работе с:
- UITableViewController
- UITableView
- UITableViewDataSource
- UITableViewDelegate
- UITableViewCell


**В проекте используются:**

* UITableViewController
* переход по segue
* работа с опциональными значениями
* работа с массивом
* в качестве источника данных статик метод getTrackList модели данных Track



### Техническое задание к проекту:

На главном экране отображается список трек-листов с иконками альбома, список можно скролить.
В NavigationBar hf[vtcnbnm кнопку Edit - переводит трек-лист в режим редактирования(можно менять местами треки).
При перемещении треков детальная информация по ним должна отображаться корректно.
При нажатии на трек открывается детальная информация (фото альбома, описание трека).


![screenshot of sample](https://i.ibb.co/b7nCCss/tracing-List.png)

## Documentation

### Model:

      Track - основная модель данных

#### Method:

      getTrackList - содержит исходные данные для списка треков и возвращает список треков

### TrackListViewController

      реализует главные экран приложения

### TrackDetailsViewController

      реализует экран с детальной информацией по треку
  

## Developers

- [Irina Muravyova](https://github.com/IrinaMuravyova)

## License
Project TrackList is distributed under the MIT license.
