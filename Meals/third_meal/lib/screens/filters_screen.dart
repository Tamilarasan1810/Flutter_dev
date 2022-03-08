import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/main_darwer.dart';
import '../main.dart';

class FiltersScreen extends StatefulWidget {
  // const FiltersScreen({Key? key}) : super(key: key);
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  initState() {
    // TODO: implement initState
    _glutenFree = widget.currentFilters['gluten']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _vegan = widget.currentFilters['vegan']!;
    _lactoseFree = widget.currentFilters['lactose']!;
    super.initState();
  }
//
  // Widget _buildCupertinoSwitch(
  //   String title,
  //   String description,
  //   bool currentValue,
  // ) {
  //   return Row(
  //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       SizedBox(width: 10),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Text(
  //             '$title',
  //             style: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 18,
  //             ),
  //           ),
  //           Text(
  //             '$description',
  //             style: TextStyle(
  //               color: Color.fromARGB(255, 103, 102, 102),
  //             ),
  //           ),
  //         ],
  //       ),
  //       SizedBox(width: 70),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: <Widget>[
  //           CupertinoSwitch(
  //               value: currentValue,
  //               onChanged: (newValues) {
  //                 setState(() {
  //                   currentValue = newValues;
  //                 });
  //               }),
  //         ],
  //       ),
  //     ],
  //   );
  // }

//
//
  // Widget _buildSwitch(
  //   String title,
  //   String description,
  //   bool currentValue,
  //   Function updateValue,
  // ) {
  //   return SwitchListTile(
  //       title: Text('Gluten-free'),
  //       value: currentValue,
  //       subtitle: Text('Only include gluten-free meals.'),
  //       onChanged:(bool)=> updateValue());
  //   // (bool newValue) {
  //   //   setState(() {
  //   //     currentValue = newValue;
  //   //   });
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegetarian': _vegetarian,
                'vegan': _vegan,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your Meal Selection.',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Gluteen Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Only include Gluteen-free meals',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 0),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end, //
                        children: <Widget>[
                          CupertinoSwitch(
                              value: _glutenFree,
                              onChanged: (newValues) {
                                setState(() {
                                  _glutenFree = newValues;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Lactose Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Only include Lactose-free meals',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 0),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end, //
                        children: <Widget>[
                          CupertinoSwitch(
                              value: _lactoseFree,
                              onChanged: (newValues) {
                                setState(() {
                                  _lactoseFree = newValues;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Vegetarian Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Only include Vegetarian-free meals',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 0),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end, //
                        children: <Widget>[
                          CupertinoSwitch(
                              value: _vegetarian,
                              onChanged: (newValues) {
                                setState(() {
                                  _vegetarian = newValues;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Vegan Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Only include Vegan-free meals',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 0),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end, //
                        children: <Widget>[
                          CupertinoSwitch(
                              value: _vegan,
                              onChanged: (newValues) {
                                setState(() {
                                  _vegan = newValues;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//
//
//
//  SwitchListTile(
//                     title: Text('Gluten-free'),
//                     value: _glutenFree,
//                     subtitle: Text('Only include gluten-free meals.'),
//                     onChanged: (newValues) {
//                       setState(() {
//                         _glutenFree = newValues;
//                       });
//                     })

                //

                //
// MergeSemantics(
//       child: ListTile(
//         title: Text('$title'),
//         subtitle: Text('$description'),
//         trailing: CupertinoSwitch(
//           value: currentValue,
//           onChanged: updateValue(),
//         ),
//         onTap: () {
//           setState(() {
//             _glutenFree = !_glutenFree;
//           });
//         },
//       ),
//     )