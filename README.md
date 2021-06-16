# flutter_starter

## Routing

For routing you can use `RouteManager` Class
RouteManager initted inside the SplashView
- Routemanager.newPage(Widget())
- RouteManager.newPageReplacement(Widget()) 
  ### Note: You have create RouteManager context again after use `newPageReplacement` command
- RouteManager.backPage()

## Storage

For local storage you can use `Storage` Class
- saveString(String) 
- getString(String)
- saveList(String)
- getList(String)
- deleteStorage(String)

## StatefulWrapper

If you need to use created hook inside the StatelessWidget just use StatefulWrapper
```
 Widget build(BuildContext context) {
    return StatefulWrapper(
        onInit: () {
          RouteManager.initializeRoute(context);
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            //TODO: Redirect
          });
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('${AppLocalizations.of(context).helloWorld}'),
          ),
        ));
  }
```

## Extensions

- You can find some ready  `String`, `Context` and `DateTime` extensions

## Utils

- You can add helper functions inside the `Utils` Class

## Todos

- Add your Todo's here

## Custom Theme

- Manage your theme settings.

![logo](https://camo.githubusercontent.com/98aed372ee2f2b5bbc399ae315200884dcade966ce015e0a9c0207fdd28f80bc/68747470733a2f2f63646e2e646973636f72646170702e636f6d2f6174746163686d656e74732f3833303130363532393831333439353833382f3833303130363739383834303038363535382f43616c736d615f59757a6579695f322d3130302e6a7067)
