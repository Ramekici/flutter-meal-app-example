import 'package:flutter/material.dart';
import 'package:meal_app_ekici_flutter/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {

  static String routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FilterScreen(this.saveFilters, this.currentFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

 
  @override
  void initState() { 
       _glutenFree = widget.currentFilters['gluten'];
      _vegetarian = widget.currentFilters['vegetarian'];
      _vegan = widget.currentFilters['vegan'];
      _lactoseFree = widget.currentFilters['lactose'];

    super.initState();
    
  }

  Widget _buildSwitchListTile(String title, String subTitle, bool currentValue, Function updateValue){
    return SwitchListTile(
                title: Text(title), 
                value: currentValue, 
                subtitle: Text(subTitle),
                onChanged: updateValue);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtreleme'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save),
           onPressed: () {
             final selectedFilters = {
               'gluten': _glutenFree,
                'vegetarian': _vegetarian,
                'vegan': _vegan,
                'lactose': _lactoseFree
             };
              widget.saveFilters(selectedFilters);
           }
           
           )
          
        ],
      ),
      drawer: MainDrawer(),
      body:Column(
        children: <Widget>[
          Container(padding: EdgeInsets.all(20),
          child: Text('Ürün Seç',
          style: Theme.of(context).textTheme.headline6,
          
          ),),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Glutensiz', 
                  'Gluten içermeyen menu',
                   _glutenFree, 
                  (newValue){
                    setState((){
                      _glutenFree = newValue; 
                    });
                  }),
                   _buildSwitchListTile(
                  'Vejeteryan', 
                  'Vejeteryan menu',
                   _vegetarian, 
                  (newValue){
                    setState((){
                      _vegetarian = newValue; 
                    });
                  }),
                  _buildSwitchListTile(
                  'Vegan', 
                  'Vegan menu',
                   _vegan, 
                  (newValue){
                    setState((){
                     _vegan = newValue; 
                    });
                  }),
                   _buildSwitchListTile(
                  'Lactose', 
                  'Lactoz menu',
                   _lactoseFree, 
                  (newValue){
                    setState((){
                      _lactoseFree = newValue; 
                    });
                  }),
              ]
            )
          ),

        ]
      )
    );
  }
}