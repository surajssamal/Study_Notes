#set page(
  paper: "a4",
  header: context {
    if counter(page).get().first() == 1 {
      align(center)[
        #text(size: 15pt, font: "Noto Sans Sora Sompeng")[Computer based Numerical methods and statistics]
      ]
      align(right)[
        #text(size: 12pt, font: "Noto Sans Sora Sompeng")[by Suraj samal]
      ]
    }
  },
  numbering: "1",
)
#set heading(numbering: "1.")
#set text(size: 10pt)

= Statistics
If you wanna learn statistics these are the topic you can learn them from my Machine leaning for Maths pdf\
here are the topics : \

+ mean
+ variance
+ standard deviation
+ anova
+ t-text
+ z-test
+ chi-square test

= Numerical methods
== Bijection/Midpoint method
Use to find/Approximate roots of a function

Steps to follow :-

- given a function and a range\
  $y =f(x)$ ; [a,b]

have to find the roots
+ try putting the a and b values separately into the function $f(x)$
+ check wheather they're closer to 0 ; if not then find a mid-point
+ using this $(a+b)/2$
+ repeat the steps until find a number near 0 or approx to 0

eg: -
$f(x) = x^3-x-2$ is the function and range is $[1,2]$ find its roots
- with range [1,2]\
  with x =1 \
  $1-1-2 =-2$\

  with x =2 \
  $8-2-2 =-4$

  Finding Mid point $(1+2)/2 =1.25$
- with range [1,1.25]
... and so on. Till we find 0 or near zero if not after 3-4 iteration then just leave it there

== Newton rampson method
It is also used for same objective of finding the root numbers but this one is much faster than bijection

Steps to follow :-

- given a function and a number $x_0$(or could be an initial guess)\
  $y =f(x)$ ; $x_0$

have to find the roots
+ try putting $x_0$ value into the function
+ if not zero then apply this formula for a new $x_(n+1)$\
  $x_(n+1) =x_n- f(x_n)/(f'(x_n))$
+ repeat the steps

== Trapezoidal formula
It is Used to find the area under the curve of a function

Steps to follow :-

- given a function and a range b/w the function like in integrals $limits(integral)_a^b$ \
  $y = limits(integral)_a^b f(x)$ \
  in a sense we are doing integrals but the way of doing is bit different instead of finding the value we find the approx value cause computers can't follow the traditional way of integration like we humans do .

  To find the area
  + find h \
    $ h = (b-a)/n $ ; n is the subsinterval its upto you whatever n you can take the larger the n the accurate the value is. but its not always nessasary to take large n keep it  b/w 2-10 most of the time for the sake of ease of calculation
  + apply the rest onto the formula
  $ limits(integral)_a^b f(x) approx h/2 [y_0 + y_n + 2 (sum_(i=1)^(n-1) y_i)] $

== simpsons's rule
It is also used to find the area under the graph of a function here's how to do it.

Steps to follow :-

- given a function and a range b/w the function like in integrals $limits(integral)_a^b$ \
  $y = limits(integral)_a^b f(x)$ \

  To find the area
  + find h \
    $ h = (b-a)/n $ ;n follows the same rule as in Trapezoidal but a slight contiditon that the n Should be an even number

  + apply the rest onto the formula
  $ limits(integral)_a^b f(x) approx h/3 [y_0 +y_n + 4(sum_(i=2i+1)^(n-1) y_i) + 2 (sum_(i=2i)^(n-2) y_i) ] $

== Lagrange Interpolation
Given some data points  x -> y we've to estimate the y value for a given x point

it is simple just use the formula
- Formula

$
  f(x) = sum_(i=0)^n y_i dot L_i (x) ||
  L_i (x) = product_(j!=i) (x-x_j) /(x_i - x_j)
$
;where n is number of given data points

eg: -
given a set of numbers
#table(
  columns: 2,
  [x], [y],
  [1], [1],
  [2], [4],
  [3], [9],
)
find for $f(1.5)$


for i=0, $x_0 =1$ ,$y_0 =1$\
$
  f(x) = 1 dot L_o (x) => ((1.5-2)(1.5-3))/((1-2)(1-3)) \
  (-0.5 (-1.5))/(-1 dot -2) = 0.75/2 approx 0.375
$

for i=1, $x_0 =2$ ,$y_0 =4$\
$
  f(x) = 4 dot ((1.5-1)(1.5-3))/((2-1)(2-3)) approx 3 \
$

for i=2, $x_0 =3$ ,$y_0 =9$\
$
  f(x) = 4 dot ((1.5-1)(1.5-2))/((3-1)(3-2)) approx 1.125 \
$

Summing all up

$
  0.375 + 3+ 1.125 = 2.25
$

Which is obviously not correct cause we can see the pattern in the input and output. It's clearly $x^2$ function \
but you have to keep in mind it is an approximater. which try to make approximation from the provided given data

== Newton forward
Same objective as lagrange interpolation but is mostly used when the given x values are equally spaced like :- 1,2,3 spacing of 1

- Steps to follow

1. Find h
$
  h= x_1-x_0
$

2. Find u
$
  u= (x-x_0)/h
$

3. Make a $Delta y^i$ table


#table(
  columns: 6,
  [x], [y], [$Delta y$], [$Delta y^2$], [$Delta y^3$], [$dots.h$],
  [$x_0$], [$y_0$], [$y_1-y_0$], [$Delta y_1-Delta y_0$], [$Delta y_1^2-Delta y_0^2$], [$dots.h$],
  [$x_1$], [$y_1$], [$y_2-y_1$], [$Delta y_2-Delta y_1$], [], [],
  [$x_2$], [$y_2$], [$y_3-y_2$], [], [], [],
  [$x_3$], [$y_3$], [], [], [], [],
  [$dots.v$], [$dots.v$], [], [], [], [$dots.down$],
)


4. Formula
$
  f(x)= y_0 + u dot Delta y_0 + u(u-1)/2! dot Delta^2 y_0 + ( u(u-1)(u-2))/3! dot Delta^3 y_0 + ...\
  " or other way of writing that is "\
  f(x)= y_0 + sum_(i=1)^n (product_(k=0)^(i-1)" "(u-k))/i! dot Delta^i y_0 \
  product_(k=1)^(i-1)" "(u-k) := cases(u"   ," i=1, (u-1) "  ," i=2, (u-1)(u-2) " ," i=3, dots.v)
$

eg :- given that
#table(
  columns: 2,
  [x], [y],
  [1], [1],
  [2], [8],
  [3], [27],
  [4], [64],
)
find for $f(2.5)$
$
  h=2-1 \
$

$
  u = (2.5-1)/1 =1/5
$

#table(
  columns: 5,
  [x], [y], [$Delta y$], [$Delta y^2$], [$y^3$],
  [1], [1], [7], [12], [6],
  [2], [8], [19], [18], [],
  [3], [27], [37], [], [],
  [4], [24], [], [], [],
)

putting everyrhing together

$
  f(x) =1+ 1.5 dot 7 +(1.5(1.5-1))/2! dot 12 +(1.5(1.5-1)(1.5-2))/3! dot 6 \
  1+10.5+4.5+(-0.375)=15.625
$

== least square/ linear regression
given some of data points x->y have to find the best fit line

*Formula*\
for b

$
  b =(n sum x y - ( sum x)(sum y))/(n sum x^2 - (sum x)^2)
$

for m

$
  y =(sum y -b sum x)/n
$

after getting m and b apply it on the equation of line (y=mx+b)

== euler method
It is used to find a approximate value y at a specific x for a given differencial equation if solved\
in simple terms if we're given a diffrencial equation and asked to solve it and find its value at a specific x point euler method can help us in that. \
so instead of solving a diffrencial equation and finding its general equation then finding its arbitrary constant/inital contiditon value and solve for a specific x euler gives a jump in b/w of that

Given a D.E $(d y)/(d x) = f(x,y)$ here $f(x,y)$ is a differencial equation don't get confused into thinking this is a function with x and y parameters

- Formula for $y_(n+1)$
$
  y_(n+1) = y_n +h dot f(x_n,y_n)
$

- formula for $x_(n+1)$
$
  x_(n+1) =x_n +h
$
NOTE:- a little note , so to find the value for a specific x we have to iterate it from $x_0$ to $x_n$ we cant just put values of the desired number x and hope to get the y \
there is a process and the "h" plays a part init. you will understand if you look into an example .

eg :- given a function $"dy"/"dx" =x+y$ and inital contiditon/values  = $y(0)=1$ find for x=1.

we can assume 'h' anything and for sake of calculation h=0.25

+ iter 1 for  $x=0 , y=1$\
  $y_(n+1) =1+0.25 dot (0+1) = 1.25$\
  $x_(n+1) = 0+0.25 =0.25$

  $y(0.25) approx 1.25$

+ iter 2 for $x =0.25,y=1.25$\
  $y_(n+1) =1.25+0.25 dot (0.25+1.25) = 1.625$\
  $x_(n+1) = 0.25+0.25 =0.50$

  $y(0.50) approx 1.625$

+ iter 3 for $x =0.50,y=1.625$\
  $y_(n+1) =1.625+0.25 dot (0.50+1.625) = 2.15625$\
  $x_(n+1) = 0.50+0.25 =0.75$

  $y(0.75) approx 2.15625$

+ iter 4 for $x =0.75,y=2.15625$\
  $y_(n+1) =2.15625+0.25 dot (0.75+2.15625) = 2.8828125$\
  $x_(n+1) = 0.75+0.25 =1$

  $y(1) approx 2.8828125$

as we can see "h" plays a crucial role to determine after how many iteration can we reach at the desired x \
0->0.25->0.50->0.75->1 it took for iters we can pre-determine it via $("desired x")/h$

== error and error analysis

It uses error in input to determine how much error or controbution would've affected in the result.

steps to follow :-
- Absolute error formula

  $"Absolute error"= abs("true value" - "approx value ")$

- Relative error formula

  $"Relative error"= "Absolute error" / "true value"$

- Percentage error

  $"Percentage error"= "Relative error " dot 100$


#box(
  fill: luma(235),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[General Rule:- \
  So in error there are these genral rules which can help us to compute Percentage error easily without going through the usual way\
  here are some rules :=
  + $(x_"error" plus.minus y_"error")plus.minus z = (x plus.minus x_"error") plus.minus (y plus.minus y_"error")$
  + $(x_"error"+y_"error") times.div z =(x_"error" times.div x) times.div (y_"error" times.div y) cases("here" times.div "is " times "/" div)$
]



