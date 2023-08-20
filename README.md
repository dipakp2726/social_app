# social_app

A new Flutter project.

## App Architecture and Folder Structure

The code of the app implements clean architecture to separate the UI, domain and data layers with a feature-first approach for folder structure.


### Folder Structure

```
lib
├── core
│   ├── services
│      └── storage
├── features
│   ├── post
│       ├── models
│       ├── providers
│       ├── repositories
│       └── views
│           ├── pages
│           └── widgets
│  
├── main.dart
└── social_app.dart
```

```sh
dart run build_runner watch --delete-conflicting-outputs
```

add freezed model
```shell
 mason make model_freezed_json
```
