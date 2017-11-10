# MATHEMATICS
## PONG

**binary name** : 101pong

**repository name** : 101pong_$ACADEMICYEAR

**repository rights** : ramassage-tek

**language** : C, C++, perl 5, python 3 (≥ 3. 5 ), ruby 2 (≥ 2. 2 ), php 5.6, bash 4

**group size** : 1 to 2

**compilation** : via Makefile, including re, clean and fclean rules

- Your repository must contain the totality of your source files, but no useless files (binary, temp files,
    obj files,...).
- All the bonus files (including a potential specific Makefile) should be in a directory named _bonus_.
- Error messages have to be written on the error output, and the program should then exit with the
    84 error code (0 if there is no error).

**Subject**
_Pong_ , developped as an arcade game in 1972 by Ralph Baer (Atari), is the first ever successful video game. It was in-
spired by the very first video game, _Tennis for Two_ , developped in 1958 by William Higinbotham on an oscilloscope.

The goal of this project is to work on a 3d version of this game (or of the Brick Break game by the way...) ; only one bat
will be considered, moving only in the 0-altitude plan (which happens to be (Oxy)).

```
Bounces on the bat and ends of game will not be taken into account ; in other words, only the ball
movement is considered, whatever the context.
```
Your program have then to print :

- the coordinates of the ball speed vector,
- the ones of the ball in a given amount of time,
- the angle at which the ball will hit the bat (if ever the ball will indeed hit the bat, at anytime from t=0).


**Usage**

```
∼/B-MAT-100> ./101pong x0 y0 z0 x1 y1 z1 n
```
**x0** ball abscissa at time t−1

**y0** ball ordinate at time t−1

**z0** ball altitude at time t−1

**x1** ball abscissa at time t

**y1** ball ordinate at time t

**z1** ball altitude at time t

**n** time shift (greater than or equal to zero, integer)

**Bonus**

- ball acceleration management,
- a graphical interface,
- a full 2d Pong game,
- a full 2d Brick Breaker game,
- a full 3d Pong game,
- a full 3d Brick Breaker game,
- a spherical bat,

**Examples**


```
∼/B-MAT-100> ./101pong 1 3 5 7 9 -2 4
The speed vector coordinates are :
(6.00;6.00;-7.00)
At time t+4, ball coordinates will be :
(31.00;33.00;-30.00)
The ball won't reach the bat.
```


```
∼/B-MAT-100> ./101pong 1.1 3 5 -7 9 2 4
The speed vector coordinates are :
(-8.10;6.00;-3.00)
At time t+4, ball coordinates will be :
(-39.40;33.00;-10.00)
The incidence angle is :
16.57 degrees
```
```
The incidence angle should be contained between 0 and 90 degrees.
```
```
Mind the float numbers precision!
```




