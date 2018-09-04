# 8051-classes

Microcontroller and microprocessor classes taught on the 2nd half of 2018 at the Federal University of São Carlos, Brazil.

Here, all the exercises proposed by the professor are listed

## Classes

### 1st Class

* #### ex1

    A sequence of leds on P0 that turn on individualy following a sequence to left.

### 2nd Class

* #### ex1

    Pratically same as ex1 from 1st class, but got two leds turned on at the same time, symmetrically. The system controls virtually a stepper motor with four entries from P0.0 to P0.3

* #### ex2

    An improvement of the last program, adding a variable that controls how many turns the motor will perform.

* #### ex3

    Set the engine to run keeping the 600RPM and add a function to wait for press an button before the motor starts.

### 3rd Class

### 4th Class

* #### ex1

    Implements an external interruption on class4ex1 that stops the engine and wait for the P1.3 to be pressed to return

## Command Guide

### Data Manipulators

* #### mov [to, from]

* #### djnz

* #### rl

* #### clr

### Flux Manipulator

* #### Call Function

    * #### acall

    * #### ret

* #### Jump Function

    * #### sjmp

    * #### org

    * #### jb

## Referências:

[Lista de comandos Assembly para 8051](http://www.keil.com/support/man/docs/is51/is51_instructions.htm)