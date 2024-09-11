# Potator
A simple client for [Potatoes](https://github.com/neoapps-dev/potatoes-backend) reverse-fetch proxy and domain system
made in pure Dart and Flutter

## Usage

1. **Install potator**:

    ```dart
    flutter pub add potator
    ```

2. **Import the package**:

    ```dart
    import 'package:potator/potator.dart';
    ```

3. **Use it**:

    ```dart
    Potator.use('YOUR_POTATO_SERVER_URL'); // optional, changes the Potato server
    final String google = await Potator.get('google.potato/');
    // the slash is optional, and can be used to get a specific file, for example:
    final String hosts = await Potator.get('hosts.potato/HOSTS.txt');
    // will return the official HOSTS :)
    ```

## License
[MIT](LICENSE)