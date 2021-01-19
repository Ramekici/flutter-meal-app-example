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
    title: 'Kebab',
    imageUrl: '',
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
    title: 'Kebab',
    imageUrl: '',
    ingredients: ['et', 'soğan'],
    steps: ['',''],
    duration: 30,
    complexity: Complexity.Hard,
    affordabilty: Affordabilty.Luxurios,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegeterian: true
  )
];