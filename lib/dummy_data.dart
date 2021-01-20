import 'package:flutter/material.dart';

import './model/category.dart';
import './model/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1', 
    title: 'Italian',
    color: Colors.purple
  ),
  Category(
    id: 'c2', 
    title: 'Turkish',
    color: Colors.blue
  ),
  Category(
    id: 'c3', 
    title: 'French',
    color: Colors.pink
  ),
  Category(
    id: 'c4', 
    title: 'American',
    color: Colors.yellow
  ),
  Category(
    id: 'c5', 
    title: 'Italian',
    color: Colors.purple
  ),
  Category(
    id: 'c6', 
    title: 'Italian',
    color: Colors.lime
  ),
  Category(
    id: 'c7', 
    title: 'Italian',
    color: Colors.orange
  ),
  Category(
    id: 'c8', 
    title: 'Summer',
    color: Colors.teal
  ),
  Category(
    id: 'c9', 
    title: 'Italian',
    color: Colors.orange
  ),
  Category(
    id: 'c10', 
    title: 'Summer',
    color: Colors.teal
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Somon',
    imageUrl:'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Luxurios,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c4'],
    title: 'Biftek',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Luxurios,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  ),
  Meal(
    id: 'm3',
    categories: ['c5', 'c6'],
    title: 'Pizza',
    imageUrl: 'https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523_960_720.jpg',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Luxurios,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  ),
  Meal(
    id: 'm4',
    categories: ['c2', 'c6'],
    title: 'Makaroni',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/11/23/18/31/close-up-1854245_960_720.jpg',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Luxurios,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c9'],
    title: 'Eggs',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_960_720.jpg',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  )
];