# anim_search_app_bar

An animated SearchAppBar Widget, to be used with Flutter.

![](demo.gif)

Website example >> https://animsearchappbar.mustafaturkmen.dev

## Usage

It has a very easy to use

```dart
const AnimSearchAppBar(
  cancelButtonText: "Cancel",
  hintText: 'Search',
),
```

## Complete Example

```dart
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimSearchAppBar(
            cancelButtonText: "Cancel",
            hintText: 'Search for Neighborhood, Street or avenue',
            cSearch: controller.cSearch,
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
