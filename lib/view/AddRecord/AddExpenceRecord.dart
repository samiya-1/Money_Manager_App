import 'package:flutter/material.dart';
import 'package:money_manager_app/view/AddRecord/AddIncomeRecord.dart';

class AddRecordExpence extends StatefulWidget {
  const AddRecordExpence({super.key});

  @override
  State<AddRecordExpence> createState() => _AddRecordExpenceState();
}

class _AddRecordExpenceState extends State<AddRecordExpence> {
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Record",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddRecordIncome(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 2,
                            )
                          ]),
                      child: Text(
                        "Income",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddRecordExpence(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(.2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 2,
                                offset: Offset.fromDirection(
                                    BorderSide.strokeAlignOutside))
                          ]),
                      child: Center(
                        child: Text(
                          "Expences",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text("Amount"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Amount',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Text("Category"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Select Category',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Text("Date"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Select Date',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Text("Notes"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Notes',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
