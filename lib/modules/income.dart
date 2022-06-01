import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/Income.dart';
import 'package:myapp/partials/functions.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            FutureBuilder<List<Income>>(
                future: fetchIncomes(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                        child: CircularProgressIndicator());
                  } else {
                    return Container(
                        child: ListView.builder(
                          itemBuilder: (BuildContext, index) {
                            return Card(
                                child: ListTile(
                                    title: Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                              CupertinoIcons
                                                  .money_dollar_circle,
                                              color: Colors.green),
                                          onPressed: () => 1,
                                        ),
                                        Text(
                                          '${snapshot.data![index].title}' +
                                              ' : ' +
                                              '${snapshot.data![index].amount}' +
                                              ' XOF',
                                          style: TextStyle(
                                              fontFamily: 'Dosis'),
                                        ),
                                      ],
                                    )));
                          },
                          itemCount: snapshot.data!.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.all(5),
                          scrollDirection: Axis.vertical,
                        ));
                  }

                  return Center(
                      child: CircularProgressIndicator());
                }),
          ],
        ));
  }
}
