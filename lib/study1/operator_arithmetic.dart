import 'package:flutter/material.dart';

///算数运算符
void main() {
  int a = 10;
  int b = 2;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b); //取整
  print(a % b);

  print("#######################################################################");
  //print(a++);//先打印 在+1
  //print(++a);//先+1 在打印

  print(a--);//先打印 在-1
  print(--a);//先-1 在打印

}
