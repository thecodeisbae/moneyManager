import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  TextEditingController incomeTitleController = TextEditingController();
  TextEditingController incomeAmountController = TextEditingController();
  TextEditingController expenseTitleController = TextEditingController();
  TextEditingController expenseAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          verticalDirection: VerticalDirection.down,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Card(
                          child: Container(
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                        "Total incomes ",
                                        style: TextStyle(
                                            color:
                                            Colors.white,
                                            fontFamily:
                                            'Dosis',
                                            fontWeight:
                                            FontWeight
                                                .bold)),
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    icon: Icon(
                                        CupertinoIcons
                                            .arrow_down,
                                        color: Colors.white,
                                        size: 40),
                                    onPressed: () => 1,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text("15000 XOF ",
                                        style: TextStyle(
                                            color:
                                            Colors.white,
                                            fontFamily:
                                            'Dosis',
                                            fontWeight:
                                            FontWeight
                                                .bold)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.green,
                        );
                      } else {
                        return Card(
                          child: Container(
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                        "Total expenses ",
                                        style: TextStyle(
                                            color:
                                            Colors.white,
                                            fontFamily:
                                            'Dosis',
                                            fontWeight:
                                            FontWeight
                                                .bold)),
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    icon: Icon(
                                        CupertinoIcons
                                            .arrow_up,
                                        color: Colors.white,
                                        size: 40),
                                    onPressed: () => 1,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text("15000 XOF ",
                                        style: TextStyle(
                                            color:
                                            Colors.white,
                                            fontFamily:
                                            'Dosis',
                                            fontWeight:
                                            FontWeight
                                                .bold)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.redAccent,
                        );
                      }
                    },
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Center(
                          child: CupertinoButton(
                            onPressed: () {
                              showDialogIncome();
                            },
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Icon(
                                    CupertinoIcons
                                        .money_dollar_circle,
                                    color: Colors.white),
                                Text('Income',
                                    style: TextStyle(
                                        fontFamily: 'Dosis',
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 8))
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: CupertinoButton(
                              onPressed: () {
                                showDialogExpense();
                              },
                              color: Colors.redAccent,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      CupertinoIcons
                                          .money_dollar_circle,
                                      color: Colors.white),
                                  Text('Expense',
                                      style: TextStyle(
                                          fontFamily: 'Dosis',
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 8))
                                ],
                              )),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ]),
    );
  }

  void saveIncome(String title, String amount) {
    //incomes.add(title+' : '+amount+' XOF');
  }

  void saveExpense(String title, String amount) {
    //expenses.add(title+' : '+amount+' XOF');
  }

  void showDialogIncome() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            "Adding new income",
            style: TextStyle(fontFamily: 'Dosis'),
          ),
          content: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: CupertinoTextField(
                          controller: incomeTitleController,
                          prefix:
                          Icon(CupertinoIcons.info, color: Colors.green),
                          placeholder: 'Title',
                          style: TextStyle(fontFamily: 'Dosis', fontSize: 18),
                          keyboardType: TextInputType.text,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: CupertinoTextField(
                          controller: incomeAmountController,
                          prefix: Icon(CupertinoIcons.money_dollar_circle,
                              color: Colors.green),
                          placeholder: 'Amount',
                          style: TextStyle(fontFamily: 'Dosis', fontSize: 18),
                          keyboardType: TextInputType.number,
                        ))
                  ],
                ),
              ],
            ),
          ),
          actions: [
            CupertinoDialogAction(
                child: Text("Save",
                    style: TextStyle(
                        fontFamily: 'Dosis', color: Colors.lightBlueAccent)),
                onPressed: () {
                  saveIncome(
                      incomeTitleController.text, incomeAmountController.text);
                  incomeTitleController.clear();
                  incomeAmountController.clear();
                  Navigator.of(context).pop();
                }),
            CupertinoDialogAction(
              child: Text("Cancel",
                  style:
                  TextStyle(fontFamily: 'Dosis', color: Colors.redAccent)),
              onPressed: () {
                incomeTitleController.clear();
                incomeAmountController.clear();
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  void showDialogExpense() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            "Adding new expense",
            style: TextStyle(fontFamily: 'Dosis'),
          ),
          content: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: CupertinoTextField(
                          controller: expenseTitleController,
                          prefix: Icon(CupertinoIcons.info,
                              color: Colors.redAccent),
                          placeholder: 'Title',
                          style: TextStyle(fontFamily: 'Dosis', fontSize: 18),
                          keyboardType: TextInputType.text,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: CupertinoTextField(
                          controller: expenseAmountController,
                          prefix: Icon(CupertinoIcons.money_dollar_circle,
                              color: Colors.redAccent),
                          placeholder: 'Amount',
                          style: TextStyle(fontFamily: 'Dosis', fontSize: 18),
                          keyboardType: TextInputType.number,
                        ))
                  ],
                ),
              ],
            ),
          ),
          actions: [
            CupertinoDialogAction(
                child: Text("Save",
                    style: TextStyle(
                        fontFamily: 'Dosis', color: Colors.lightBlueAccent)),
                onPressed: () {
                  saveExpense(expenseTitleController.text,
                      expenseAmountController.text);
                  expenseTitleController.clear();
                  expenseAmountController.clear();
                  Navigator.of(context).pop();
                }),
            CupertinoDialogAction(
              child: Text("Cancel",
                  style:
                  TextStyle(fontFamily: 'Dosis', color: Colors.redAccent)),
              onPressed: () {
                expenseTitleController.clear();
                expenseAmountController.clear();
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
