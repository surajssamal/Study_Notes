
#set math.equation(numbering: "(1)")
#set page(
  paper: "a4",
  header: context {
    if counter(page).get().first() == 1 {
      align(center)[
        #text(size: 15pt, font: "Noto Sans Sora Sompeng")[Mathematical proof and logic]
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

_Pre-requisites_

*Symbols*

*_ sets/ variable_*
- used to represent Sets =$A$ ;can be any capital variable
- used to represent element inside a set = $a$ ; can be any lower case variable
*_Important sets notation_*
- whole numbers = $WW$
- Natural number = $NN$
- Integers = $ZZ$
- Rational Numbers = $QQ$
- Irrational numbers = $II$
- Real numbers = $RR$
- Complex numbers  =$CC$
- Empty set = $emptyset$
- Universal set = $UU$
*_Properties of sets_*
- finite set = $|A|$
- Set A is a equal subset of set B if every element of Set A is in set B = $A subset.eq B$
- Subset if A is subset of set B but A is not B = $A subset B$
- Set compliment ; all the elements of Universal sets which were not an element of set A = $A prime slash A^complement$
- Union set  = $union$
- intersect set =$inter$
*_Quantifiers_*
- For ALL = $forall$
- There exist = $exists$
- AND = $and$
- OR = $or$
- Element of  = $in$ \
  example 5 $in$ {3,4,5} means 5 in set {3,4,5}
- not Element of = $in.not$
- IF and only IF = $<=>$
- {Condition one being true } $==> slash ->$ {implies condition 2 being true  }
- {Condition one being true } $<== slash <-$ {implies condition 2 being false }

*_Negation Symbols_*
- Not = $not slash tilde slash " "prime$\
  example "karan is a dog" its negation would be $not$"karan is a dog" --> "karan is not a dog"\
  Here' some very common negation
  - $not(A and B) = not A or B$
  - $not(A => B) = A and not B$
- $not(A or B) = not A and not B$
  - $not(forall x, y) = exists x , not y$
  - $not(exists x, y) =forall x,not y$

*_Some word symbols_*
- such that = $S.T slash : slash |$
= Proof
== Introduction to proof
*Defination* :- A Proof is a logical argument which establishes a conclusion about a Idea.


== Proposition
A proposition is a proposal of case/idea/theory that either can be true or false but not both.\
Like :-

#table(
  columns: 2,
  [Statement], [Proposition],
  [7 is a prime number], [True],
  [x>5], [depends on x(unsure of the is case) $crossmark$],
  [the eiffel tower is in paris], [True],
)
=== Connection proposition
it is made by connecting different proposition idea together. Like lets say there are two proposition P and Q
#table(
  columns: 2,
  [connection], [Explanation],
  [$P and Q$], [only true if both P and Q are true],
  [$P or Q$], [only true if either P or Q are true],
  [$not P$], [ Opposite truth value],
  [*important one* \ $P=>Q$], [ P implies Q i.e if P is true than Q must be true],
)

For better understanding of implication ($=>$) here's its truth table

#table(
  columns: 3,
  [P], [Q], [$p=>Q$],
  [True], [True], [True],
  [False], [True], [True],
  [True], [False], [False],
  [False], [False], [True],
)
As we can see the only way of $P=>Q$ being false is. If P is true and Q is false

*Intuition*: If I say "If it rains, I'll carry an umbrella" — I only lied. If it rained and I had no umbrella. If it didn't rain, you can't accuse me of lying regardless of what I did.

== Steps of doing proof

Before we go on and explain how to do proof we've to learn what we CAN prove
- something equals something
- one implies another
- A type of object has a property
- every object of a type has a property
- an object exist
- an object exist ( and its unique )

I think you already knows these and there's no need for memorization

*steps of solving proofs*

Proofs have a
- Beginning (assumption) :- assuming some case/(theory to be true) or some property to be true
- middle ( Logical process ) :- try working around  algebraically , geometrically or any other way to prove you're claim case to be true
- End ( Theorem ) :- if worked and logic make sense then great you proved a proof else if calculation and other step went right but the result contradict the assumption we failed to prove our proposition and the opposite of that is true

*Eg*:- given $sqrt(2)$ Prove that its irrational, and to prove that you've to use Proof by Contradiction (which we'll learn more about later in this PDF) i.e prove that $sqrt(2)$ is rational and try proving it. if failed then it's contrapositive (number is irrational) is true.

A bit of information for you before you start. Rational numbers are those number which can be represented in form of fraction  ($m/n$ m and b being integers) and one more thing. When we write them in fraction make sure if there in there reduced form i.e $3/6 -> 1/2$ it shouldn't be
in non-reduced for like $24/6$

_Lets prove_
1. we've to prove $sqrt(2)$ to be rational which means in form of ($m/n$)

$
  sqrt(2) =m/n -> 2^(1/2) = m/n\
  2 =(m/n)^2 -> 2 = (m^2)/(n^2)\
  2n^2 =m^2\
$
in the LHS we can see $2n^2$ that means the LHS is even(property of even numbers 2k) also RHS cause its '=' \

Which means $m^2$ is also even ,taking that in account we can say m is also even. Which can also we written as 2k

so,

$
  2n^2 = (2k)^2 -> 2n^2 = 4k^2\
  n^2 =2k^2
$
Remember what conclusion we made before. If RHS is $2k^2$(i.e even) then $n^2$ can also be written as $(2k)^2$ so that n is also even.

*Conclusion* :- since m and n are both found to be even (i.e a factor of 2) which mean they can be reducible. And that violate the rational number rule to be fixed reducible fraction. \
and  by assuming that $sqrt(2)$ is rational and via a correct logical process we came up with something self-contradicting that means the number is irrational. Which we were trying to prove

$
  therefore sqrt(2) "is irrational"
  square.filled
$
*Rule* :- if every thing in our logic is correct and yet we've a Contradiction it must be our Assumption is wrong

And btw its not important but The $square.filled$ symbol means "proof complete".

== Statements to symbolic notation
1. For all capital M in Real number there exists x in the real number such that the absolute value of f(x) is greater than or equal to M

:- $(forall M in RR) ,(exists x in RR) underbrace(" such that ", "also can use "| "or" :) (abs(f(x)) >= M)$

And its negation is

$(exists M in RR),(forall x in RR : abs(f(x))<M)$

2. for all M in Real number there exists a x in the real numbers  such that all y>x we have f(y)>M.

:- $(forall M in RR),(exists x in RR |forall y>x),[f(y)>M)]$

And its negation is

$(exists M in RR),(forall x in RR|exists y >x),[f(y)<=M]$

3. for every epsilon greater than 0 there exists and delta greater than zero such that the absolute value between $f(x)- f(x_0)$  is less than epsilon when the absolute value $x-x_0$ is less than delta.

:- $(forall epsilon >0), (exists delta>0) "such that"(forall x in RR),(abs(x-x_0)<delta) =>[abs(f(x)- f(x_0))<epsilon]$

And its negation

$(exists epsilon > 0),(forall delta>0) "such that" (exists x in RR ),(abs(x-x_0)<delta) and [abs(f(x)-f(x_0)) >=epsilon]$


== Direct proof

Its a verification of a conditional statement/proposition like
$p ==> q$\
where we assume p is true and via logical process we try to verify the implications that q must be true when p is true.\
Its procedure is simple as the name says Directly go on to prove but make an assumption first i.e something you're trying to prove

Lets take an example for clear understanding

Eg 1:- prove that sum of two even numbers is also an even number .

Lets take 2 number which are even m,l ($m,l in ZZ$)\
we know that even  number are of this form = 2k
$
  2k =m+l \
  "m and n are also even so we assume m=2c and l=2n" (c,n in ZZ)\
  2k = 2c +2n\
  2k=2(c+n)\
  "since c+n are also an integer we can say c+n= p "(p in ZZ)\
  2k=2p\
  "hence we can see a 2 in lhs with p we can say any 2 even number added together  "\
  "result in another even number" square.filled
$

Eg 2:- prove that an even integer when squared is also an even integer.

Lets take an even number a ($a in ZZ$)\
we know that we can represent even integers as 2k so\

$
  a = 2k (k in ZZ)\
  "squaring 2k"\
  (2k)^2 = 4k^2\
  2(2k^2) \
  "as we can see a multiple of 2 we can conclude that our claim"\
  "square of an even number is also an even number as true" square.filled
$

Eg 3:- Square of an odd number is also an odd number.

Lets take an odd number a $(a in ZZ)$
$
  "we know that we can write odd numbers as" 2k+1 "or" 2k-1 ;(k in ZZ)\
  a= 2k+1\
  "squaring both sides "\
  a^2 =(2k+1)^2\
  a^2 = (2k)^2 + 1^2 +2(2k) dot 1\
  a^2 =4k^2 +1+4k \
  2(2k^2+2k)+1\
  "since "2k^2+2k "is an integer we can assume "2k^2+2k =p (k in ZZ)\
  2p +1\ " we've got this in the form of odd number"\
  "hence square of odd number is also odd" square.filled
$

== Proof by contrapositive
It states this if P implies Q($P => Q$) then it also means that not Q implies not P ($not Q => not P$) so if we're able to prove this. Its contrapositive is also true.

Kinda like saying if i wanna prove that if i switch on the switch then electricity flows.\
its contrapositive is if the electricity is not flowing than the switch must be off.

Lets take some example for clean understanding

Eg 1:- Prove if $x$ is irrational number than $1/x$ is also irrational number.

As we know from before rational number are those numbers which can be written in fractional reduced form if not then that number is irrational numbers.

All right you might have looked into the equation and thought of solving it but there no simple possible way to go to prove the number is Irrational.\
That's where Proof by contrapositive comes in.\
Assume the negation of it like. Given $1/x$ is rational prove x is also rational.\
This can be much more helpful . Alight lets start

$
  "we know " 1/x in QQ\
  "that means it can be expressed as "m/n\
  1/x =m/n => x =n/m\
  "hence proved we expressed "x" in fraction i.e x is rational number "\
  "so the conclusion is if x is irrational than"1/x "is also irrational according to the rule of contrapositive" square.filled
$

Eg 2:- Prove if $n in ZZ, n^2$is odd then n is also odd.

With using its contrapositive ($not(p => q) = not q=> not p$) we can say "given n is even prove $n^2$ to be even " we've already solved this before in Direct prove so we can make a conclusion that its contrapositive is also true $square.filled$

== Proof by Contradiction

It states that if P implies Q $(P=>Q)$ then its negation is P and not Q $(P and not Q)$ must be false. And that's what we have to prove that the negation of the initial assumption is false that means the initial assumption must be true.

Kinda like saying that if we have to prove that switch is on and electricity is flowing than its contradiction is "if the switch is on and electricity is not flowing" is found to be false/untrue/impossible than the only case which left is our initial assumption is true.

Here's some examples

Eg 1:- prove $sqrt(3)$ is irrational.

Lets prove by contradiction
$
  "assuming "sqrt(3) "is rational number "\
  not (sqrt(3) in II) => (sqrt(3) in QQ)\
  sqrt(3) =p/q ; (p,q in ZZ)\
  "squaring both sides "\
  3 = (p/q)^2 => 3 =(p^2)/(q^2)\
  3q^2 =p^2\
$

On the LHS we can see there is a multiple of 3 with $q^2$ which equals to the RHS $p^2$\
that means $p^2$is a multiple of 3 and from our previous proof of $sqrt(2)$ we learned that if a power is a multiple of something than means its base itself is also a multiple of that same number\
I.E p is a multiple of 3\

With that we can write $p^2$ as $(3k)^2 ,(k in ZZ)$

$
  3q^2= (3k)^2 => 3q^2 = 9k^2\
  q^2 =3k^2
$
we can see $q^2$ is also an multiple of 3 that means q is also a multiple of 3

Conclusion :- we found out p and q both are a multiple of 3 which breaks math if we say $sqrt(3)$ is a rational number since a rational number are in there reduced form. \
the only possibility left is that the $sqrt(3)$ is a irrational number which we were trying to prove initially. \
Hence $sqrt(3)$ is an irrational number $square.filled$

Eg 2:- prove $sqrt(2)$ +$sqrt(6)$ < $sqrt(15)$

Since we're doing prove by contradiction \
$not (sqrt(2) +sqrt(6) < sqrt(15)) => sqrt(2) + sqrt(6) >= sqrt(15)$

Prove that $sqrt(2)$ +$sqrt(6)$ >= $sqrt(15)$

$
  "squaring both sides "\
  (sqrt(2)+sqrt(6))^2 >=sqrt(15)^2 => 2+6+2 dot sqrt(2) sqrt(6) >=15\
  8+2 dot sqrt(2) dot sqrt(6) >=15 => 2 dot sqrt(12) >=7\
  "squaring both sides"\
  4 dot 12 >= 49 => 48 >= 49\
  48 >= 49 "is Mathematical not true"
$
so we contradict our 2nd assumption which leads to our initial assumption being true $square.filled$

== Proof by Cases/Exhaustion
It is used to check the Legitimacy of the theorem.\
In this we have to prove every possible instance of a theorem if correct then that theorem is right else the theorem is  wrong.

Here's are some examples

Eg 1 :- prove that $forall n in ZZ, n^2 + n$ is even

We've to show $n^2+n =2k$ aka even

#underline[*Case one*]: n is even => 2k
$
  n^2 +n => (2k)^2 + 2k => 4k^2 +2k \
  => 2(2k^2+k)\
  "Yea it is even for n being even"
$
#underline[*Case odd*]: n is odd => 2k+1
$
  n^2 +n => (2k+1)^2 + 2k+1 \
  4k^2 +1 +2k+2k+1 => 4k^2 +4k+2\
  2(2k^2+2k+1)\
  "Yea this also seems even "
$

Conclusion :- A number can be either odd or even that's it and we've checked for both the possibility we can Conclude that the theorem is legit. $square.filled$

Eg 2:- Prove $x+ abs(x-7)>=7 , forall x in RR$

Aight looking at the equation we can see there can be two cases
- $x >=7$
- $x<7$
lets check

#underline[*Case 1*] : $x>= 7$
$
  x+abs(x-7) => 2x-7 "where x being ">= "7"
$
so yea for case $x>=7$ y is greater than equals to 7

#underline[*Case 2*] : $x< 7$
$
  x+abs(x-7)=>x+(-(x-7))=>x+(7-x) = 7
$
Which also concludes that y is equals to 7

Hence the conclusion is no matter what the x is the y is always gonna be greater than or equals to 7 $square.filled$

Eg 3:-  Prove if $x,y in RR ,"then" abs(x+y)= abs(x)+abs(y)$ ,also know as the triangle theorem.

- #underline[*Case 1*] : $x<=0 ,y<=0$
$
  abs((-x)+(-y))= abs(-x)+abs(-y) => -(x+y) = abs(-x)+abs(-y)\
$

- #underline[*Case 2*] : $x>0 ,y>0$
$
  abs(x+y)=abs(x)+abs(y) => x+y =x+y
$

- #underline[*Case 3*] : $x>=0 ,y<0$(without the Loss of generality i.e we done need to write $x<0 ,y>=0$ in calculation it is the same ) so, $abs(x) =x and abs(y)=-y$
  - #underline[*Sub-Case*]: $x+y>=0$ : $abs(x+y) =x +y <=x + (-y) = abs(x)+abs(y)$
  - #underline[*Sub-Case*]: $x+y<0$ : $abs(x+y) =-(x +y) <=x + (-y) = abs(x)+abs(y)$

== Mathematical Induction
It's a Way of checking whether a case/function/statement is true through out any given set of  continuous parameters  .Yea it might sound a bit confusing but think of it like this.\
If given $p(n) "for each" n in NN$\
If for $p(k)$ the function is true and for $p(k+1)$ is also true then the function will be true for rest of the continuous sets of elements.\
Like a domino.

We do it like this:-
- if given a statement/Equation/function/case check via putting an initial case. For a function it can be the parameter value 1.
- make an assumptions that the value of k is true.
- try proving it for k+1 also.
- if the result for argument  k+1 looks identical with the original function or comply as the proof requested than that function is true else false.

*Eg 1*:- given a function $(n(n+1))/2$ which gives the sum of all numbers starting from 0 to n. We have to prove whether this is a case for all numbers.

Checking with initial case

$
  (n(n+1))/2 => (1(1+1))/2 =1
$
so yea its true for 1.

Assumption for k

$
  (n(n+1))/2 => (k(k+1))/2
$
Looks identical to the original function.

Checking for k+1
$
  (k(k+1))/2 + (k+1) => (k(k+1))/2 + (2(k+1))/2 = (k(k+1)+2(k+1))/2\
  "factoring out (k+1)"\
  ((k+1)(k+2))/2 => ((k+1)((k+1)+1))/2\
  "if we look carefully it looks identical to the original equation"\
  (overbrace((k+1), n)(overbrace((k+1), n)+1))/2
$
so, hence proved the element is true for all $n in NN$

*Eg 2*:- Prove that $3^n -1$ is multiple of 2.

As earlier we'll follow the same step

For initial argument 1
$
  3^1-1 = 2 "this is even"
$

Assumption for k is true
$
  3^k-1 =2m ,(m in ZZ)
$

// for highlighting and drawing
#import "@preview/pinit:0.2.2": *

Checking for k+1
$
  "we can write for k+1 as"\
  3^(k+1)-1 => 3 dot 3^k -1 => #pin(1) 2 dot 3^k+3^k -1#pin(2)\
  2 dot 3^k + undershell(3^k -1, 2m "from eq 21") => 2 dot 3^k + 2m\
  2(3^k+m)= 2l ,(l in ZZ)
$

So,this indeed result in an even number
#pinit-highlight(1, 2)
#pinit-point-from(2)[
  $"It is simple."\
  (2+1)3^k -1 => 6^k + 3^k -1$\
  $2 dot 3^k + 3^k-1$]


*Eg 3*:- we've to prove this $(cos theta + iota sin theta)^n = cos(n theta)+ iota sin(n theta),(n in NN)$ this is also called the De moivre's theorem , and btw $iota = sqrt(-1)$

For initial argument
$
  (cos theta + iota sin theta)^n = cos(n theta)+ iota sin(n theta) => (cos theta + iota sin theta)^1 = cos(1 theta)+ iota sin(1 theta)\
  (cos theta + iota sin theta) = cos(theta)+ iota sin(theta)
$

Assumption for k
$
  (cos theta + iota sin theta)^k = cos(k theta)+ iota sin(k theta)
$

Checking for k+1
$
  "We can write k+1 as "\
  (cos theta + iota sin theta)^(k+1) = underbrace((cos theta + iota sin theta)^k, "replce with from eq 24") dot (cos theta + iota sin theta)\
  (cos(k theta)+ iota sin(k theta)) dot (cos theta +iota sin theta)\
  cos(k theta) dot cos(theta)+ iota sin(k theta) dot cos(theta)+ cos(k theta) dot iota sin(theta)+underbrace(iota^2, -1) sin(theta) dot sin(k theta)\
  "arrangint it a bit "\
  cos(k theta) cos(theta)-sin(theta) dot sin(k theta)+iota(sin(k theta) dot cos(theta)+cos(k theta)dot sin(theta))\
  underbrace(cos(k theta) cos(theta)-sin(theta) dot sin(k theta), cos(alpha + beta) "formula")+iota(underbrace(sin(k theta) dot cos(theta)+cos(k theta)dot sin(theta), sin(alpha + beta) "formula "))\
  cos(k theta +theta)+ i dot sin(k theta+ theta) => cos(theta (k+1))+ iota dot sin(theta(k+1))\
  cos(theta (k+1))+ iota dot sin(theta(k+1)) square.filled
$
hence proved for k+1 the formula looks identical

== Strong Induction
It has the same objective as Mathematical Induction but instead of assuming that the case/statement/function is true for p(k) we assume/hypothesis that for all values from $p(n_0) ... p(n_k)$ are true and via using that we try to prove that for $p(k+1)$

*Eg 1*:- we have to prove that any number $n>1$ is a prime number or a factor of prime numbers (keep that in mind i said factor of prime number"s" which mean there can be any n set of prime numbers multiplying each others).

- Base/initial case : 2\
2 itself is a prime number so it satisfies the statement

- Assuming all number from $n_0 .. n_k$ also satisfies the statement

- Proving for k+1\
  There can two cases for this induction step
  - #underline[*Case 1*] : k+1 is prime\
    which already satisfies the statement

  - #underline[*Case 2*] : k+1 is a composite/non-prime\
    if k+1 is non prime then\
    $k+1 = a dot b ,(a,b in ZZ, n_0<a<b<k+1)$\
    As the assumption we made earlier that numbers from $n_0 ... n_k$ must be prime or factor of primes implies that the factor of k+1= a and b which are less than k+1 .that means those numbers are also prime . $square.filled$

Hence prove the statement

