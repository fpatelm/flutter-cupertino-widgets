import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
CupertinoApp Widget1
CupertinoPageScaffold Widget1
CupertinoButton Widget2
CupertinoActionSheetAction Widget3
CupertinoActivityIndicator Widget4
CupertinoAlertDialog Widget5
CupertinoContextMenu Widget6
CupertinoDatePicker Widget7
CupertinoPageRoute Widget8
CupertinoPicker Widget9
CupertinoPopupSurface Widget10
CupertinoScrollBar Widget11
CupertinoSearchTextField Widget12
CupertinoSegmentedControl Widget13
CupertinoSlider Widget14
CupertinoSlidingSegmentedControl Widget15
CupertinoSwitch Widget16
CupertinoTextField
CupertinoTabScaffold Widget0
CupertinoTabBar Widget0
CupertinoTabView Widget0
*/
void main() {
  runApp(const MyApp());
}

void pop(context) => Navigator.pop(context);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cupertino Widgets',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        brightness: Brightness.light,
      ),
      home: Widget1(),
    );
  }
}

//CupertinoTextField
/*CupertinoTabScaffold Widget0
CupertinoTabBar Widget0
CupertinoTabView Widget0
*/
class Widget0 extends StatelessWidget {
  const Widget0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm))
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: ((context) => Center(child: Text('$index'))),
        );
      },
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar:
          CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: CupertinoTextField()),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(child: const Text('Click Me'), onPressed: () {}),
            CupertinoButton.filled(
                child: const Text('Click Me'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Click Me'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('New Photo'),
                message: const Text('Choose where to pick a new photo'),
                actions: [
                  CupertinoActionSheetAction(
                      onPressed: () => {}, child: const Text('Camera')),
                  CupertinoActionSheetAction(
                      onPressed: () => pop(context),
                      child: const Text('Gallery'))
                ],
                cancelButton: CupertinoActionSheetAction(
                    onPressed: () => {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: CupertinoColors.destructiveRed),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}

//CupertinoActivityIndicator
class Widget4 extends StatelessWidget {
  const Widget4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar:
          CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoActivityIndicator(
          animating: true,
          color: CupertinoColors.activeOrange,
          radius: 50,
        ),
      ),
    );
  }
}

//CupertinoAlertDialog
class Widget5 extends StatelessWidget {
  const Widget5({Key? key}) : super(key: key);
  void pop(context) => Navigator.pop(context);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Click Me'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('This App Would like to Access the Camera'),
                content: const Text('This will access all your photos'),
                actions: [
                  CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () => pop(context),
                      child: const Text('Don\'t Allow')),
                  CupertinoDialogAction(
                      onPressed: () => pop(context), child: const Text('Ok'))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

//CupertinoContextMenu
class Widget6 extends StatelessWidget {
  const Widget6({Key? key}) : super(key: key);
  void pop(context) => Navigator.pop(context);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            child: Image(image: AssetImage('images/logo.png')),
            actions: [
              CupertinoContextMenuAction(
                child: const Text('Subscribe'),
                onPressed: () => pop(context),
              ),
              CupertinoContextMenuAction(
                child: const Text('Like'),
                onPressed: () => pop(context),
              ),
              CupertinoContextMenuAction(
                child: const Text('Share'),
                onPressed: () => pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//CupertinoDatePicker
class Widget7 extends StatelessWidget {
  const Widget7({Key? key}) : super(key: key);
  void pop(context) => Navigator.pop(context);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Click Me'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 300,
                  child: CupertinoDatePicker(
                      minimumYear: 2020,
                      mode: CupertinoDatePickerMode.dateAndTime,
                      use24hFormat: false,
                      backgroundColor: Colors.white,
                      onDateTimeChanged: (DateTime value) {}),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

//CupertinoPageRoute
class Widget8 extends StatelessWidget {
  const Widget8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar:
            const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
        child: Center(
          child: CupertinoButton.filled(
            child: const Text('Go to Page 2'),
            onPressed: () => Navigator.of(context).push(
              CupertinoPageRoute(
                  builder: (BuildContext context) => const Widget8PageTwo()),
            ),
          ),
        ));
  }
}

class Widget8PageTwo extends StatelessWidget {
  const Widget8PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Page two')),
      child: Center(
        child: CupertinoButton.filled(
            child: const Text('I am page 2'), onPressed: () {}),
      ),
    );
  }
}

//CupertinoPicker
class Widget9 extends StatelessWidget {
  const Widget9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar:
            const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
        child: Center(
          child: CupertinoButton.filled(
            child: const Text('Click Me'),
            onPressed: () => showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: CupertinoPicker(
                          itemExtent: 30,
                          scrollController:
                              FixedExtentScrollController(initialItem: 1),
                          onSelectedItemChanged: (value) {},
                          children: const [
                            Text('Value 1'),
                            Text('Value 2'),
                            Text('Value 3'),
                            Text('Value 4'),
                          ]),
                    )),
          ),
        ));
  }
}

//CupertinoPopupSurface
class Widget10 extends StatelessWidget {
  const Widget10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Click Me'),
          onPressed: () => showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoPopupSurface(
              child: Container(
                color: CupertinoColors.white,
                alignment: Alignment.center,
                width: double.infinity,
                height: 500,
                child: CupertinoButton(
                    child: Text('iOS Surface'), onPressed: () => pop(context)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//CupertinoScrollBar
class Widget11 extends StatelessWidget {
  const Widget11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: CupertinoScrollbar(
        child: ListView.builder(
          itemCount: 300,
          itemBuilder: (BuildContext context, index) => Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}

//CupertinoSearchTextField
class Widget12 extends StatelessWidget {
  const Widget12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: CupertinoSearchTextField(
            controller: searchController,
            onChanged: (value) {},
            onSubmitted: (value) {},
          ),
        ),
      ),
    );
  }
}

//CupertinoSegmentedControl
class Widget13 extends StatefulWidget {
  const Widget13({Key? key}) : super(key: key);

  @override
  State<Widget13> createState() => _Widget13State();
}

class _Widget13State extends State<Widget13> {
  var currentValue;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            currentValue != null
                ? Text('$currentValue')
                : const Text('Select an option'),
            CupertinoSegmentedControl(
              selectedColor: Colors.redAccent,
              pressedColor: Colors.lightBlue,
              unselectedColor: Colors.amber,
              children: const {
                'Like': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Like'),
                ),
                'Subscribe': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Subscribe'),
                ),
                'Share': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Share'),
                )
              },
              onValueChanged: (value) {
                //set your local var
                setState(() {
                  currentValue = value;
                });
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }
}

//CupertinoSlider
class Widget14 extends StatefulWidget {
  const Widget14({Key? key}) : super(key: key);

  @override
  State<Widget14> createState() => _Widget14State();
}

class _Widget14State extends State<Widget14> {
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$currentValue'),
              CupertinoSlider(
                  value: currentValue,
                  min: 0,
                  max: 20,
                  divisions: 40,
                  onChanged: (value) => setState(() {
                        currentValue = value;
                      }))
            ]),
      ),
    );
  }
}

//CupertinoSlidingSegmentedControl
class Widget15 extends StatefulWidget {
  const Widget15({Key? key}) : super(key: key);

  @override
  State<Widget15> createState() => _Widget15State();
}

class _Widget15State extends State<Widget15> {
  var currentValue;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            currentValue != null
                ? Text('$currentValue')
                : const Text('Select an option'),
            CupertinoSlidingSegmentedControl(
              groupValue: currentValue,
              children: const {
                'Like': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Like'),
                ),
                'Subscribe': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Subscribe'),
                ),
                'Share': Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Share'),
                )
              },
              onValueChanged: (value) {
                //set your local var
                setState(() {
                  currentValue = value;
                });
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }
}

//CupertinoSwitch
class Widget16 extends StatefulWidget {
  const Widget16({Key? key}) : super(key: key);

  @override
  State<Widget16> createState() => _Widget16State();
}

class _Widget16State extends State<Widget16> {
  bool currentValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('KEYNOTECAST Youtube')),
      child: Center(
        child: CupertinoSwitch(
            onChanged: (value) {
              setState(
                () {
                  currentValue = value;
                },
              );
            },
            value: currentValue),
      ),
    );
  }
}
