import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/modules/home.dart';
import 'package:myapp/modules/income.dart';
import 'package:myapp/modules/expense.dart';
import 'package:myapp/modules/stats.dart';


class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);
  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  String content = 'Home';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.green,
          middle: Text('Money manager ',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Dosis',
                  fontWeight: FontWeight.bold))
          ,
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            onTap: (value) {
              if (value == 0) {
                content = 'Home';
              }

              if (value == 1) {
                content = 'Incomes';
              }

              if (value == 2) {
                content = 'Expenses';
              }

              if (value == 3) {
                content = 'Stats';
              }

              if (value == 4) {
                content = 'About';
              }
            },
            iconSize: 15,
            activeColor: Colors.black,
            inactiveColor: Colors.white,
            backgroundColor: Colors.green,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  title: Text('Home', style: TextStyle(fontFamily: 'Dosis'))),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.arrow_down),
                  title:
                      Text('Incomes', style: TextStyle(fontFamily: 'Dosis'))),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.arrow_up),
                  title:
                      Text('Expenses', style: TextStyle(fontFamily: 'Dosis'))),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chart_pie),
                  title: Text('Stats', style: TextStyle(fontFamily: 'Dosis'))),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.question_circle),
                  title: Text('About', style: TextStyle(fontFamily: 'Dosis'))),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                switch (content) {
                  case 'Home':
                    {
                      return HomeWidget();
                    }
                    break;
                  case 'Incomes':
                    {
                      return IncomeWidget();
                    }
                    break;
                  case 'Expenses':
                    {
                      return ExpenseWidget();
                    }
                    break;
                  case 'Stats':
                    {
                      return StatsWidget();
                    }
                    break;
                  default:
                    return Center(
                      child: Text(
                        'Content of tab ' + content,
                        style: TextStyle(fontFamily: 'Dosis'),
                      ),
                    );
                    break;
                }
                return Center(
                  child: Text(
                    'Nothing to show up',
                    style: TextStyle(fontFamily: 'Dosis'),
                  ),
                );
              },
            );
          },
        ));
  }

}
