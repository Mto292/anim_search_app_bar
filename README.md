# anim_search_app_bar

An animated SearchAppBar Widget, to be used with Flutter.

Website example >> https://animsearchappbar.mustafaturkmen.dev

![demo](https://user-images.githubusercontent.com/49743631/164681568-710f4794-aaa5-4428-8fbc-135b00dc29ef.gif)

## Usage

It has a very easy to use.

add this line to pubspec.yaml

```yaml

   dependencies:
     anim_search_app_bar: ^1.0.3

```

import package

```dart

   import 'package:anim_search_app_bar/anim_search_app_bar.dart';

```

```dart
const AnimSearchAppBar(
  cancelButtonText: "Cancel",
  hintText: 'Search',
),
```

## Complete Example

```dart
class SearchScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimSearchAppBar(
            cancelButtonText: "Cancel",
            hintText: 'Search for Neighborhood, Street or avenue',
            cSearch: searchController,
            appBar: const PBAppBar(
              title: 'Search',
            ),
          ),
          const Expanded(child: SearchView()),
        ],
      ),
    );
  }
}
```
