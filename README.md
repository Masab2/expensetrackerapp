# Expense Tracker App with Bloc and Hive

Expense Tracker App is a Flutter application designed to help users manage their expenses efficiently. It utilizes Bloc for state management, Hive for local database storage, and follows the MVVM (Model-View-ViewModel) architecture pattern for better code organization and maintainability.

## Features

- Track and categorize expenses.
- View expense history and statistics.
- Set budget limits and receive notifications.
- Secure local data storage using Hive database.
- User-friendly and intuitive interface.

## Dependencies

- **Flutter**: A cross-platform UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Bloc**: A state management library for Flutter applications, based on the BLoC (Business Logic Component) design pattern.
- **Hive**: A lightweight and fast key-value database written in pure Dart, used for local data storage in Flutter apps.
- **Provider**: A state management library for Flutter applications, used to implement MVVM architecture.
- **intl**: A Flutter package for internationalizing and localizing Flutter applications.

## Architecture

The Expense Tracker App is structured using the MVVM (Model-View-ViewModel) architecture pattern, along with Bloc for state management:

- **Model**: Represents the data entities and business logic of the application.
- **View**: Represents the UI components and their layout.
- **ViewModel**: Acts as a bridge between the Model and View, responsible for managing the presentation logic and state of the UI.
- **Bloc**: Manages the application's state and business logic, interacting with the ViewModel to update the UI.

## Installation and Setup

To run the Expense Tracker App:

1. Install Flutter SDK on your system.
2. Clone this repository.
3. Navigate to the project directory.
4. Run `flutter pub get` to install dependencies.
5. Run the app on an emulator or a physical device using `flutter run`.

## Usage

1. Launch the app on your device.
2. View the list of existing expenses.
3. Add a new expense by tapping on the '+' button and providing details.
4. Edit or delete existing expenses by tapping on them.
5. Set budget limits and receive notifications when exceeding them.
6. Changes to expenses are automatically saved to the Hive database.

## Credits

- This project is developed by Masab Haider
