PixelVectorGlyphGenerator
=========================

A little Processing tool for creating the point and line definitions for each character of the generated PixelVector font for PixelPyros (https://github.com/sebleedelisle/PixelPyros)

This tool lets you draw the letters in hot magenta on a 5x7 grid and outputs the line definitions to a text file for use as a generated font. The actual rendering of the letters happens in PixelPyros, but I think I should make a Processing version of the rendering function too :) 

Currently requires the controlP5 GUI library http://www.sojamo.de/libraries/controlP5/ 


The current output for each letter if you're curious:
 
A

line(0 , 6 , 0 , 1);

line(0 , 1 , 2 , 0);

line(2 , 0 , 4 , 1);

line(4 , 1 , 4 , 3);

line(4 , 3 , 0 , 3);

line(4 , 3 , 4 , 6);

		
B

line(0 , 0 , 0 , 6);

line(0 , 6 , 3 , 6);

line(0 , 0 , 3 , 0);

line(3 , 0 , 4 , 1);

line(4 , 1 , 4 , 2);

line(4 , 2 , 3 , 3);

line(3 , 3 , 0 , 3);

line(3 , 3 , 4 , 4);

line(4 , 4 , 4 , 5);

line(4 , 5 , 3 , 6);



C

line(0 , 0 , 0 , 6);

line(4 , 0 , 0 , 0);

line(0 , 6 , 4 , 6);



D

line(0 , 0 , 0 , 6);

line(0 , 0 , 3 , 0);

line(3 , 0 , 4 , 2);

line(4 , 2 , 4 , 4);

line(4 , 4 , 3 , 6);

line(0 , 6 , 3 , 6);

            

E

line(0 , 0 , 0 , 6);

line(4 , 0 , 0 , 0);

line(4 , 3 , 0 , 3);

line(0 , 6 , 4 , 6);

        

F

line(0 , 0 , 4 , 0);

line(0 , 3 , 4 , 3);

line(0 , 0 , 0 , 6);

        

G

line(0 , 0 , 0 , 6);

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 1);

line(2 , 3 , 4 , 3);

line(4 , 3 , 4 , 6);

line(0 , 6 , 4 , 6);

        

H

line(0 , 0 , 0 , 6);

line(0 , 3 , 4 , 3);

line(4 , 0 , 4 , 6);



I

line(0 , 0 , 4 , 0);

line(2 , 0 , 2 , 6);

line(0 , 6 , 4 , 6);



J

line(0 , 4 , 1 , 6);

line(2 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);

line(1 , 6 , 4 , 6);



K

line(0 , 0 , 0 , 6);

line(0 , 3 , 4 , 0);

line(0 , 3 , 4 , 6);



L

line(0 , 0 , 0 , 6);

line(0 , 6 , 4 , 6);



M

line(0 , 0 , 0 , 6);

line(0 , 0 , 2 , 2);

line(2 , 2 , 4 , 0);

line(4 , 0 , 4 , 6);



N

line(0 , 0 , 0 , 6);

line(0 , 1 , 4 , 5);

line(4 , 0 , 4 , 6);



O

line(0 , 0 , 0 , 6);

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);

line(0 , 6 , 4 , 6);



P

line(0 , 0 , 0 , 6);

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 3);

line(0 , 3 , 4 , 3);



Q

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 4);

line(4 , 4 , 2 , 6);

line(2 , 6 , 0 , 6);

line(0 , 6 , 0 , 0);

line(2 , 4 , 4 , 6);



R

line(0 , 0 , 0 , 6);

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 3);

line(4 , 3 , 0 , 3);

line(0 , 3 , 4 , 6);



S

line(0 , 0 , 0 , 3);

line(0 , 0 , 4 , 0);

line(0 , 3 , 4 , 3);

line(4 , 3 , 4 , 6);

line(0 , 6 , 4 , 6);



T

line(0 , 0 , 4 , 0);

line(2 , 0 , 2 , 6);



U

line(0 , 0 , 0 , 5);

line(0 , 5 , 1 , 6);

line(1 , 6 , 3 , 6);

line(4 , 0 , 4 , 5);

line(4 , 5 , 3 , 6);



V

V.line(0 , 0 , 2 , 6);

V.line(4 , 0 , 2 , 6);



W

line(0 , 0 , 0 , 6);

line(0 , 6 , 2 , 4);

line(2 , 4 , 4 , 6);

line(4 , 0 , 4 , 6);



X

line(0 , 0 , 2 , 3);

line(2 , 3 , 0 , 6);

line(4 , 0 , 2 , 3);

line(2 , 3 , 4 , 6);



Y

line(0 , 0 , 2 , 2);

line(2 , 2 , 4 , 0);

line(2 , 2 , 2 , 6);



Z

line(0 , 0 , 4 , 0);

line(4 , 0 , 0 , 6);

line(0 , 6 , 4 , 6);



0

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);

line(0 , 0 , 0 , 6);

line(0 , 6 , 4 , 0);

line(0 , 6 , 4 , 6);



1

line(0 , 0 , 2 , 0);

line(2 , 0 , 2 , 6);

line(0 , 6 , 4 , 6);



2

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 3);

line(4 , 3 , 0 , 3);

line(0 , 3 , 0 , 6);

line(0 , 6 , 4 , 6);



3

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);

line(0 , 3 , 4 , 3);

line(0 , 6 , 4 , 6);



4

line(0 , 0 , 0 , 3);

line(0 , 3 , 4 , 3);

line(4 , 0 , 4 , 6);



5

line(0 , 0 , 0 , 0);

line(0 , 0 , 4 , 0);

line(0 , 0 , 0 , 3);

line(0 , 3 , 4 , 3);

line(4 , 3 , 4 , 6);

line(0 , 6 , 4 , 6);



6

line(0 , 0 , 4 , 0);

line(0 , 0 , 0 , 6);

line(0 , 3 , 4 , 3);

line(4 , 3 , 4 , 6);

line(0 , 6 , 4 , 6);



7

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);

       

8

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 3);

line(4 , 3 , 0 , 3);

line(0 , 3 , 0 , 0);

line(4 , 6 , 4 , 3);

line(0 , 3 , 0 , 6);

line(0 , 6 , 4 , 6);



9

line(0 , 0 , 0 , 3);

line(0 , 3 , 4 , 3);

line(0 , 0 , 4 , 0);

line(4 , 0 , 4 , 6);



!

line(2 , 0 , 2 , 4);

line(2 , 5 , 2 , 6);



:

line(2 , 1 , 2 , 3);

line(2 , 4 , 2 , 6);



.

line(2 , 5 , 2 , 6);




