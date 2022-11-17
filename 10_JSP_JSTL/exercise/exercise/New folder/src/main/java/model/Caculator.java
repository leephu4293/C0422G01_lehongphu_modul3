package model;

public class Caculator {
    public static double caculate (double number1 , double number2, char operator){
       switch (operator){
           case '+':
               return number1 + number2;
           case '-':
               return number1 - number2;
           case '*':
               return number1 * number2;
           case '/':
               if (number2 != 0){
                   return number1 / number2;
               } else {
                   throw new ArithmeticException(" mau phai khac 0");
               }
           default:
               throw new RuntimeException("khong co yeu cau ");
       }
    }
}
