//imports

//veinn diagrams
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4"
// for grpahs

#import "@preview/lilaq:0.6.0" as lq
// for trees
#import "@preview/tdtr:0.5.4": *
// tab spaces
#set page(
  paper: "a4",
  header: context {
    if counter(page).get().first() == 1 {
      align(center)[
        #text(size: 15pt, font: "Noto Sans Sora Sompeng")[Maths for Machine learning]
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
#align(center)[
  #text(size: 15pt)[A simple comprehensive set of Topics needed for machine learning]]

#pagebreak()
#outline()
#pagebreak()

= Probability
== introduction to probability
- *Defination*
probability is the measure of the likelihood or chances that an event will occurs
- to find the probability of a even in a sample set we use this  formula
// the set probablity formula
#align(center)[
  $P(E)= n(E)/n(s) ->cases(
    n(E) = "Number of elements in a subset of an events",
    n(s) =" sample space"
  )$]

eg :-
when dice is thrown whats the probability of the number being odd
\ sample space = {1,2,3,4,5,6}

Case :- Odd numbers $undershell({1,3,5}, "called as event space ") ="3 numbers"$\
event space is a subset of sample space represented as $E subset.eq S$; where E= event space and S = sample space \
so the probability of odd number is $3/6 -> 1/2 -> 50%$\

== Set theory in probability
Sets are an organised collection of objects in a sample space

// creating the venn diagram
#cetz.canvas({
  cetz-venn.venn2(
    name: "venn",
    // not-ab-fill:blue,
    // a-fill:yellow,
    // b-fill: red,
    // ab-fill: gray,
    //
    // used to fill colours
  )

  import cetz.draw: *
  content("venn.b", [B])
  content("venn.a", [A])
  content("venn.not-ab", [$mu$])
  content("venn.ab", [$A inter B$])

  //line
  line(
    "venn", // start at region A ∩ B
    (rel: (2, -2.0)), // relative end position
    mark: (end: ">", fill: black),
    name: "arrow",
  )

  // Label at the arrow tip
  content(
    "arrow.end",
    [Sample space $mu$],
    anchor: "north",
    padding: .1,
  )
})
// veinn diagram end

To represent intersection  is $n(A inter B$) \
To represent for union is $n(A union B$)
- and to find the union of A and B we use this $n(A union B) =n(A)+n(B)-n(A inter B)$

eg: - we're given a school where a bunch of students have opted in computer science and some have Economics and  other have not we've to find the total number of students who have take computer science or Economics

//veinn diagram start
#cetz.canvas({
  cetz-venn.venn2(
    name: "venn",
    not-ab-fill: blue,
    a-fill: yellow,
    b-fill: red,
    ab-fill: gray,

    // used to fill colours
  )

  import cetz.draw: *
  content("venn.b", [50 cs])
  content("venn.a", [30 eco])
  content("venn.not-ab", [$mu$])
  content("venn.ab", [$10$])

  //line
  line(
    "venn", // start at region A ∩ B
    (rel: (2, -2.0)), // relative end position
    mark: (end: ">", fill: black),
    name: "arrow",
  )

  // Label at the arrow tip
  content(
    "arrow.end",
    [Sample space $mu$],
    anchor: "north",
    padding: .1,
  )
})
// vein diagram end
using the formula  =$n(A)+n(B)-n(A inter B)$
- 50+30-10 =70 students

== Fair events
fair event is the subset of a sample space where each event is fair and not skewed for example a coin flip is a fair event
- if p(heads)=50% and p(tailes)=50 both are same probability
where as slightly bulged coin is a unfair event
- if p(heads)=40% and p(tails)=60%

== joint probability
joint probability is probability with some joint events

//veinn diagram start
#cetz.canvas({
  cetz-venn.venn2(
    name: "venn",
    not-ab-fill: gray,

    // used to fill colours
  )

  import cetz.draw: *
  content("venn.b", [m])
  content("venn.a", [s])
  content("venn.not-ab", [$mu$])
  content("venn.ab", [ms])


  //line
  line(
    "venn", // start at region a ∩ b
    (rel: (2, -2.0)), // relative end position
    mark: (end: ">", fill: black),
    name: "arrow",
  )

  // label at the arrow tip
  content(
    "arrow.end",
    [total number of malaria patient $mu$],
    anchor: "north",
    padding: .1,
  )
})
// vein diagram end
eg 1. :-given that out of 500 people 50 people have been given the medicine and 200 survived and 25 of those were given the medicine$p(m inter s)$ \
m= medicine given\
s= survived\
ms = medicine was given and the patient survived\

$p(s inter m)= p(m inter s)= n(m inter s)/n(mu) :=25/500 =1/20$

eg 2.:-a dice is thrown we have to find these probability :\
a) even numbers \
b) prime numbers \
c) odd numbers \
d) odd number and even number and prime number
e) prime or odd

sample space of even numbers ={2,4,6} =3 numbers -> $n("event")/n(mu)=3/6 =1/2$\

sample space of odd numbers ={3,5} =2 numbers -> $n("odd")/n(mu)=2/6 =1/3$\

sample space of prime numbers ={2,3,5} =3 numbers -> $n("prime")/n(mu)=3/6 =1/2$\

sample space of odd &even & prime numbers ={} =0 numbers -> $n("odd"inter"prime")/n(mu)=Phi$ \

sample space of odd or prime numbers ={2,3,5} =3 numbers -> $n("odd"union"prime")/n(mu)=3/6 =1/2$ \


== Conditional probability

Conditional probability is used when an event has happened and we want the find the next relevant event's probability

- formula for Conditional probability
$
  P(A | B) =p(a inter b)/p(b)
$
proof with example:-\
given that set of people are affected by malaria virus and has been hospitalised some of them have been administered the medicine and some of them have survived

//veinn diagram start
#cetz.canvas({
  cetz-venn.venn2(
    name: "venn",
    not-ab-fill: gray,

    // used to fill colours
  )

  import cetz.draw: *
  content("venn.b", [m])
  content("venn.a", [s])
  content("venn.not-ab", [$mu$])
  content("venn.ab", [ms])


  //line
  line(
    "venn", // start at region a ∩ b
    (rel: (2, -2.0)), // relative end position
    mark: (end: ">", fill: black),
    name: "arrow",
  )

  // label at the arrow tip
  content(
    "arrow.end",
    [total number of malaria patient $mu$],
    anchor: "north",
    padding: .1,
  )
})
// vein diagram end
lets say s=200\
m=50\
$m inter s$=25\

$
  p(s|m )=p(s inter m)/p(m) := (n(s inter m)/n(mu))/(n(m)/n(mu)) :=n(s inter m)/cancel(n(mu)) dot cancel(n(mu))/n(m) -> n(s inter m)/n(m)
  \
  25/50 =1/2 = 0.5 -> 50%
$
=== Mutualy exclusive events
if occurrence of one event excludes the occurrence of other event, then there called mutually exclusive events
we can represent it as this also $p(A inter B)= Phi$

=== independent events
events which are independent of the occurrence of the past event

eg :- \
given a deck of cards find these probability\
A: card is a king =$4/52 ->1/13$\
B: card is a heart =$13/52 -> 1/4$\
find the P(A|B)

$
  P(a|b)=p(a inter b)/p(b) = (1/52)/(1/4) := 4/52 -> 1/13 \
$
If we notice the result is Same as p(a) same if we take p(b|a).\
So this proves that some events are independent of the corresponding conditional event with it


== cojoint Probability
if we're given 2 independent event whats the probability of event 1 and event 2 be happening at same time (i.e what the probability of  p(a$inter$b))
$
  p(a|b) =p(a inter b)/p(b) =p(a)\
  p(a inter b)/p(b)=p(a) -> p(a inter b)= p(a) dot p(b)\
$
eg :-
we're give n coins to toss what is the probability of all the coins to be Heads
$
  p(e_1 inter e_2 inter e_3 inter e_4 ...e_n) =p(e_1) dot p(e_2) ... p(e_n) \
  "so,"
  (1/2)_1 dot (1/2)_2 dot (1/2)_3 ... (1/2)_n
$
== Bayes Theorm
Used to find the probability of P(B|A) instead of P(A|B){conditional probability} but cleverly \
Usecase :- if given a task to find the probability(spam in email|word"hello" is there )\
given that P(A)=20% and P(A|B)=80% \
$"and btw" P(A|B)!= P(B|A)$
- formula
$
  p(a|b) = (p(a) p(b|a))/p(b)
$
proof:-\
$
  p(a inter b)=p(b inter a) \
  p(b | a) = p(b inter a)/p(a) \
  p(b | a) dot p(a)=p(b inter a) \
  p(b | a) dot p(a) =p(a inter b) \
  "now we know that "\
  p(a | b) = p(a inter b)/p(b) -> p(a | b) dot p(b)= p(a inter b) \
  "subsitute it in the equation"\
  p(b|a)dot p(a)=p(a|b) dot p(b)\
  p(a|b)=(p(b|a) dot p(a))/p(b)
$

eg:- suppose we have 2 Bowls and bowl 1 has 30 vanilla cookies and 10 chocolate cookies and bowl 2 have 20 vanilla and 20 chocolate
$
  #rect(width: 25%, height: 5%, fill: gray)[B_1 vanilla:30,chocolate:10]
  #rect(width: 25%, height: 5%, fill: green)[B_2 vanilla:20,chocolate:20]
$
If we put our hands in one of the bowl and take out a cookie which happens to be vanilla what is the probability of it ?

p(v | b1) =$30/40 =3/4$ but if, \
p(b1 | v) = 🤔 (that's where we have to use our bayes theory)

$p(b_1|v)=(p(b_1) dot p(v|b_1))/p(v)\
(1/2 dot 3/4)/(50/80) := 1/2 dot 3/4 dot 80/40 =3/5$
= permutations & Combinatorics
== introduction to permutations
this teaches us how to find the number of ways we can arrange a sets of objects with some dependent conditions
=== factorial
$n! =(n-1)! dot (n-2)! dot (n-3)! ... 1!$\
this is used to find the number of permutations of a finite number of sets being arrange in any order
=== arrangements of elements
This is used to find the number of ways to arrange r items from a n sized set of distinct elements
most commonly known as $n_p_r$
formula :-
$
  n_p_r =n!/(n-r)!
$
== introduction to combinations
this is similar like arrangements of n elements in r space from permutations but here order does matter i.e if we've arranged a set {1,2,3,4} being r as 3 the sets can be {1,2,3},{2,3,1},{3,2,1},{1,2,4}... in the eyes of Combinatorics its the same as {1,2,3}
- formula
$
  n_c_r = n!/(r! dot (n-r)!)
$
- And there is a cool property
$n_c_r equiv n_c_(r-1)$

why because taking r elements mean removing n-r elements cause we want the counts of sum if you think intutively this will make sense

== partial binomial sum
if a question is asked what is the sum of all there ? \
$n_c_4+n_c_3+n_c_2+n_c_1 = ?$

this is how we solve it
$
  n_c_4+n_c_3+n_c_2+n_c_1 = 2^n
$




= Random variable
== introduction to random variables
for a given sample space s of some experiment Random variable is any rule that associates a number with each other

- types of random variable
a) Discrete : sets of countable like numbers in a dice (1,2,3,4,5,6)\
b) continuous : set of all possible values in a interval like number b/w 1-12 (1,1.2,1.3,1.4... 12) not countable \
c) ordinal : assigning a type to them like {goes to school , goes to college}

= Statistics
== Basic Statistic
- Measure of central tendency
=== Mean
formula :\
index =[set of numbers]\
n= number of elements in the index
$
  (sum_(i=0)^n ("index"_i))/n
$

=== Median
formula : \
index =[set of numbers]\
n= number of elements in the index\
$
  "median" = "index"_(n/2)
$
- *condition* :The index should be sorted first

=== mode
the most frequent number is the answer here's an example :-\
index =[1,1,2,3,4]\
#table(
  columns: 2,
  [value], [frequent],
  [1], [2],
  [2], [1],
  [3], [1],
  [4], [1],
)
so the answer is 1
== variance and deviations
=== variance
- variance tell how much each element/data point is away from the mean and takes the mean of that .In simple terms it is the mean value defines the distance of each data point from the mean data value

formula:-
$
  "variance"=sum_(i=0)^n (x_i-overline(x))^2/(n-1) cases(overline(x) "is mean")
$
=== standard deviation
($sigma$)= its nothing but square root of variance
formula
$
  "standard deviation "(sigma)=sqrt("variance")
$
=== Mean absolute value
its the same as variance but instead of squaring we use abs
$
  sum_(i=0)^n abs(x_i-overline(x))/n
$
=== Median absolute deviation

formula:-
$
  sum_(i=0)^n abs(x_i-x_m)/n cases("here" x_m "is Median of the set")
$

== Probability theory and statistics
=== Expectations
"UMEED" \
formula:-
$
  E[x]= sum_(i=0)^n p(x_i) dot x_i cases(
    p(x_i)="probability of" x_i "event",
    x_i ="weight of event"
  )
$
eg :-\
a person is given a choice that if he rolls a dice and the number is 3 then he gets 100Inr (+100) else he has to pay 10Inr (-10) find the expectation of it \

Using the formula :- $E[x]= sum_(i=0)^n p(x_i) dot x_i$\
$E[x] = (1/6 dot -10)+ (1/6 dot -10)+(1/6 dot 100)+(1/6 dot -10)+(1/6 dot -10)+(1/6 dot -10) :=(5 dot -10)/6 + 100/6 :=50/6 approx 8$ \
so the expectation value is 8 which is very low
- if there are a lot of sample set then we take E[x] = mean
$
  E[x]=mu \
  cal(x):={s "is very large subset"}
$

- *properties*
a) E[Ax] = A E[x] (where A is a constant)\
proof :-\

$
  E[x] =sum_(i=0)^n p(x_i) dot x_i \
  E[A dot x] =sum_(i=0)^n p(A dot x_i) dot x_i dot A \
  E[x] =A dot (sum_(i=0)^n (p(x_i) dot x_i)) \
  E[A x] = A E[x] \
$

b) E[x+y]=E[x] + E[y]\
proof :-\
$
  E[x + y] = sum_(i=0)^n (sum_(j=0)^m (x_i+y_j) p(x_i inter y_j)) \
  E[x + y] = sum_(i=0)^n (sum_(j=0)^m x_i p(x_i inter y_j) + sum_(i=0)^n (sum_(j=0)^m y_j p(x_i inter y_j)\
  E[x + y] = sum_(i=0)^n (underbrace(sum_(j=0)^m x_i p(x_i inter y_j), "computing" y_i) + sum_(i=0)^n (sum_(j=0)^m y_j p(x_i inter y_j)\
  >> "since events are independent the" p(a inter b) = p(a) p(b)\
  E[x + y] = sum_(i=0)^n x_i underbracket((p(x_i) p(y_0)+p(x_i) p(y_1)+p(x_i) p(y_2)+p(x_i) p(y_3)+ ... +p(x_i) p(y_n)), "this is equals to 1") + sum_(i=0)^n (sum_(j=0)^m y_j p(x_i inter y_j)\
  "same with" y_i p(x_i inter y_i) "in RHS" \
  E[x+y]=E[x] + E[y]
$

c) E[A x+b] = AE[x]+b


=== Covariance
variance of 2 random variable(x,y) w.r.t each other or the increasing decreasing property of the y wrt to x and vise versa\
formula:-\
$
  "cov"(x,y) = 1/(n-1) sum_(i=0)^n (x_i-overline(x))(y_i - overline(y)) cases(overline(x) :"is x mean", overline(y) :"is y mean")
$
//grpah
#let xs = (0, 1, 2, 3, 4, 5)
#lq.diagram(
  title: [Covariance diagram for linear relation],
  xlabel: $x$,
  ylabel: $y$,

  lq.plot(
    xs,
    x => x + 2,
    label: [Y],
    mark: "o",
  ),
)\

we will perform  covariance formula on x #xs and y  =2.9 \
which is positive and tells it is a increasing variance graphs

=== Correlation(Pearson's Correlation coefficient )
A Statistical measure that expresses the extent to which two variable (x,y) are linearly related  or how strongly a variable(x) is correlated to the other(y) \
formula:-\
$
  f(x,y)= "cov"(x,y)/(sigma_x dot sigma_x) cases(
    sigma_x :"standard deviation of x",
    sigma_y : "standard deviation of y"
  ) \
  "Expanding it"\
  f(x,y) =(cancel(1/(n-1)) sum_(i=0)^n (x_i-overline(x)) (y_i-overline(y)))/(sqrt(cancel(1/(n-1)) dot sum_(i=0)^n (x_i-overline(x))^2) dot sqrt(cancel(1/(n-1)) dot sum_(i=0)^n (y_i-overline(y))^2)) \
  f(x,y) =( sum_(i=0)^n (x_i-overline(x)) (y_i-overline(y)))/(sqrt(sum_(i=0)^n (x_i-overline(x))^2) dot sqrt(sum_(i=0)^n (y_i-overline(y))^2))\
  "range of cov="(-infinity,infinity)\
  "range of Correlation=(-1,1)so its more better than Covariance"
$

eg:-\

#let xs = (0, 1, 2, 3, 4, 5)
#lq.diagram(
  title: [Correlation diagram],
  xlabel: $x$,
  ylabel: $y$,

  lq.plot(
    xs,
    x => x + 2,
    label: [Y],
    mark: "o",
  ),
)\
here since the range is (-1,1) instead of $(- infinity,infinity)$ the answer is 0.83 which is b/w (-1,1) which is also positive means the points are increasing and also means the x is highly correlated with y
=== Binomial Distribution
binomial theorm is used to find the probability of a particular event happening r times given that the occurrence will happen n times  In simpler terms: it tells you the probability of getting exactly $k$ "successes" in $n$ independent trials\
if you still didn't get it take a look at the example you'll understand \


formula :-\
$
  p(x=r)= n_c_r dot p^r dot (p-1)^(n-r) cases(x :"event", n :"the number of times", r :"number of elements being chosen", p : "probability of the event happening", p-1 :"probability of event not happening")
$

eg :- \
you're given an dice you have to roll it n=5 times and give the probability of p(2) coming r=1 times happening\

$
  n_c_r =(5!)/(1! dot (5-4)!)\
  p = 1/6 -> p^r =(1/6)^1 \
  (p-1) = (5/6) -> (5/6)^(5-1=4)\
  "applying the formula"\
  p(x=r)= 5 dot 1/6 dot (5/6)^4 = 0.48 =48%
$
- not we can only use this when the elements are independent
- only possible when the events are Discrete i.e (true,false)\
- if n=1 it is called berrnolli's events

=== Central limit therom
Its nothing but a theory\
And i dont know a better way of explaining so here's an example from the 3B1B video.

If we take a dice and roll it 5 time and sum the results of it and do this activity multiple times we can see a normal distribution forming with the mean value in the middle with the highest probability density value.

== Probability Disribution  Function

=== Probability Density Function (PDF)
where the data of the distribution is continuous and y axis is the probability but to find the probability we use integration to compute\
eg :-\
lets say the temperature of the city varies every hour of the day and have given monthly density distribution of the temperature through out the month have to find the probability of temperature being 27 degrees    \

x = (29.22,22.32,29.2,31.11,33.65,32.34,22.0,21.6,24.43,22.3,22.23,29.23) including float point integers \

y = $1/(sigma sqrt(2 pi)) dot e^(-1/2dot ((x- mu)/sigma)^2 )$ ,were using this function to represent how density function graph will behave like but it has nothing to do with the current problem we're solving. \
This function show's if done the experiment it would look like the gaussian distribution / normal distribution\



// gaussian distribution

#let raw-xs = (19.22, 22.22, 22.32, 22.2, 31.11, 33.65, 32.34, 22.0, 21.6, 24.43, 22.3, 22.23, 29.23)
#let xs = raw-xs.sorted()

// 2. Create a function that returns ONLY a flat list of Y values
#let get-gaussian-ys(data) = {
  let n = float(data.len())
  let mean = data.sum() / n
  let variance = data.map(x => calc.pow(x - mean, 2)).sum() / n
  let std-dev = calc.sqrt(variance)

  // Return a simple array of numbers: (y1, y2, y3...)
  data.map(x => {
    let exponent = calc.exp(-0.5 * calc.pow((x - mean) / std-dev, 2))
    (1 / (std-dev * calc.sqrt(2 * calc.pi))) * exponent
  })
}

#let ys = get-gaussian-ys(xs)
// 3. Pass them as two distinct, flat arrays
#lq.diagram(
  title: [Gaussian density function],
  lq.plot(
    xs, // Array of 12 floats
    ys, // Array of 12 floats
    smooth: true,
  ),
)

As we can see or skwint our eyes we can see a gaussian distribution graph it might look a bit odd please note that we've not used enough points but thats what the basic logic looks like \
if given that to find the probability from 20-22 we can integration it to get the answer of probability distribution\

- Cummilative distribution function of the problem
cummilitave distribution function is nothing but the accumulative addition of area under the curve till the end \
the solution kind of looks like a sigmoid curve

#let xs = range(-5, 5)
#let sigmoid_function(array) = {
  array.map(x => 1 / (1 + calc.pow(calc.e, -x)))
}
#let res = sigmoid_function(xs)
#lq.diagram(
  title: [Cummilative density function],
  lq.plot(
    xs,
    res,
    smooth: true,
  ),
)

It shows how the density adds up from  0 to 1

=== Probability Mass Function (PMF)

where the data of the distribution is Discrete  using the same idea as PDF but discrete\

x = (29.22,22.32,29.2,31.11,33.65,32.34,22.0,21.6,24.43,22.3,22.23,29.23) including float point integers \
using the same example used in PDF\
// gaussian distribution

#let raw-xs = (19.22, 22.22, 22.32, 22.2, 31.11, 33.65, 32.34, 22.0, 21.6, 24.43, 22.3, 22.23, 29.23)
#let xs = raw-xs.sorted()

// 2. Create a function that returns ONLY a flat list of Y values
#let get-gaussian-ys(data) = {
  let n = float(data.len())
  let mean = data.sum() / n
  let variance = data.map(x => calc.pow(x - mean, 2)).sum() / n
  let std-dev = calc.sqrt(variance)

  // Return a simple array of numbers: (y1, y2, y3...)
  data.map(x => {
    let exponent = calc.exp(-0.5 * calc.pow((x - mean) / std-dev, 2))
    (1 / (std-dev * calc.sqrt(2 * calc.pi))) * exponent
  })
}

#let ys = get-gaussian-ys(xs)

#lq.diagram(
  width: 8cm,
  title: [ Temperature in °C],
  ylabel: [probability],
  xlabel: [degrees],
  legend: (position: left + top),
  margin: (top: 20%),

  yaxis: (mirror: false),

  lq.yaxis(
    position: right,
    lq.bar(
      xs,
      ys,
      fill: blue.lighten(40%),
    ),
  ),

  lq.plot(
    xs,
    ys,
  ),
)

- Im not gonna draw a CMF of this i think you get the idea for discrete variable just use simple Addition\



== Hypothesis testing and statistics analysis
It is a study of inference statistics more importantly it uses a sample space and help us make assumption to make final conclusion on the whole population space \
In simple terms it is used to evaluate 2 very important/mutually exclusive claims about the population from that small subset of population space

=== P-Value

!! *Prerequisites*

- Null Hypothesis ($h_0$) :- some claim that if proven false then something else is true which gives us independence to make some other/Alternative claims
- Alternative Hypothesis ($h_a$) :- it is just the opposite of Null Hypothesis i.e some claim if proven wrong then the alternative claim was right \
  but its not entirely sure which alternative claim \
  there has to be only one null Hypothesis claim and everything except then that can be categorised as alternative Hypothesis.
- Two tail test :- It is a test in which we're given a $h_0$ = some integer($Lambda$) to be true for some case. And we have to assume the $h_a$ as something $h_a != Lambda$. Which make 2 possibilities $h_a > Lambda "or" h_a < Lambda$ which creates 2 tails of the distribution for the alternative hypothesis \

*P-value* :- It is a very important topic it asks a simple question if the null Hypothesis is true than how surprising is the result we got\
P-value = P(the probability of that given event |$h_0 "is true")$\\

*Google Defination :-* \The p‑value measures how likely it is to observe results at least as extreme as the ones in our sample, assuming the null hypothesis is true. A smaller p‑value means the observed data are more surprising under the null and therefore give stronger evidence against the null and in favor of the alternative\

There are couple of rules to follow to get the P-value\
(Btw we take these probability under the assumption that null Hypothesis is true)

- compute a test statistics $z,t,chi^2("chi-square")$
- Then the p-value is the tale area of the null distribution beyond the observed statistics
kinda like this :-\
#align(left)[
  #figure(
    caption: [ 2 tail Normal distribution ],
    image("2tail_p_value.png", width: 6cm, height: 6cm),
  )
]
-- In the left side we can see white section which is left tail area and right white side is the right tail area\

*Note* :- before we go on there is a extremely important rule to follow \
it states like this .if we get a p-value($alpha$) < 0.05 then the result is statistically significant to make a conclusion that we reject the Null hypothesis if opposite of this is true then we say that we failed to reject the null hypothesis.This does not prove whether null hypothesis is true or false it only tells how compatible the data are with the null hypothesis at a 5% significant level.

*Confidence Interval :-* is a subsection of a probability distribution which tells/helps up to make null hypothesis assumption that real information might/can fall b/w this interval if its not the case then the we reject the null hypothesis\
In the figure 1. we can see the middle part is the null hypothesis and we assume that the null hypothesis is true unless any new data/experiment can prove us wrong \
usually we take the confidence interval as 95% and (2.5% left and 2.5% right as 2 tails )  that mean we assume that 95% of the null hypothesis statement might be true if its not the case we think otherwise

eg:- \
Given a coin and we flip it 10 times.The result is 6 times head and 4 times tails one could make a conclusion that the coin is unfair to check this hypothesis we do these steps \

- Null hypothesis ($h_0$) = the coin is fair\
- Alternative hypothesis ($h_a$) = the coin is unfair \

1. P of fair coin(Assuming the $H_0$ is true) =$1/2 = 0.5$

2. Using the binomial theorm we find the probability of the event happening.\
$
  "binomial theorm" = n_c_r dot p^r dot (p-1)^(n-1) \
  "P-value" = (10!/(6! dot (10-6)!)) dot 0.5^6 dot 0.5^4 =0.20507 approx 20%
$
3. check whether the p-value is less that significant value(0.05). Which it is we can make a conclusion that we failed to reject the null hypothesis.


=== Z-Test and T-test

_When to use Z-test v/s T-test_\
#align(center, tidy-tree-graph(draw-edge: tidy-tree-draws.horizontal-vertical-draw-edge)[
  - population variance/STD is given ?
    + Yes
    - is the Sample size  >=30
      + Yes
      - can use Z-test
      + No
      - use T-test
    + NO
    - Have to use T-test

])

!! *Prerequisites for Z-test*
1. Z-Score/standardization :- It rescales and tells how far above or below a value is from the mean in the units of standard deviation.\

  We can use this formula for all the values in the given sample space or population space its upto you and get a rescaled space with a variance/standard deviation of 1 and mean of 0 and call it standardization and if just do it with only one value then call it the z-score of that value . Yea i know its  a stupid naming convention of the same thing.\
formula :-\
$
  z= (x- mu)/sigma cases(
    x = "observed value",
    mu ="sample mean",
    sigma= "sample Standard deviation"
  )
$
#h(1em)  eg:-(for z-score)\
#h(1em)  We're given a results of a class and we found the mean marks is 70 and standard deviation to be 10. \
#h(2em)    Case 1 :- A person getting 80 marks find whats his z-score.\
#h(2em)    $z = (80- 70)/10 = 1$ so the student falls into 1 Standard deviation above the mean. \

#h(2em)    Case 2 :- 55 marks. \
#h(2em)    $z = (55- 70)/10 = -1.5$, so the student falls into -1 Standard deviation below the mean.\

2. Z-Table :- it tells us the proportion of the probability beyond the particular z-score in the units of p-value.\
#h(1em) like :-\
#h(2em) if z-score is 1 then the P-value is 0.8413  \
#h(1em) There is a way of finding P-value from z-table you can search on the web and learn about it its super simple \


*Z-test*

We use it to make test claims about the population mean\
- Formula
$
  Z =(overline(X)-mu_0)/underbrace((sigma "/"sqrt(n)), "Standard error") \
$

#table(
  columns: 2,
  [symbol], [Meaning],
  [$overline(X)$], [sample mean],
  [$mu_0$], [claimed population mean],
  [$sigma$], [population standard deviation],
  [n], [number of sample size],
)
Now this formula is used to determine this simple fact:-\
How many standard deviation away our sample mean is from the population mean ?  \

- *Intution*
$
  Z =("observed"- "Expectated")/"Standard error"
$

example :-\
A factory claims to produce light bulb which can last long for 1000 hrs. we've to test that. So they gave us 50 sample bulbs to test we find out the average sample mean is 960 hrs and found the population standard deviation to be 120. Find how off we're from the population mean.\

- Sample mean ($overline(X)$) :- 960\
- population standard deviation ($sigma$) :- 120\
- Null hypothesis ($h_0$) :- $mu_0$=1000 \
- alternative hypothesis ($h_a$) :- $mu_a$ < 1000\

Using the formula\

$
  (960-1000)/(120"/"sqrt(50)) approx -2.36
$
Using the Z-table we can figure out the P-value of the give Z-score. Which turns out to be 0.0091 \
Which is way less that significance value (0.05) so we conclude that we reject the null hypothesis\

*NOTE :-* In the above question we assumed it to be a one tailed test (we wanted to know whether the bulb can last long < 1000 hrs) that's why the significance value is 0.05 .If it was a two tail test then it would have been 0.025 in left and 0.025 in right

*T-test*

Objective is the same as Z-test we've to find  whether the population mean and sample mean is different and find how significant is so that we either reject or fail to reject the null hypothesis

*Steps to compute t-test*\
- Formula :-\
$
  z= (overline(X)- mu)/(s "/"sqrt(n))
$
comparing the formula with z-test:\
$
  sigma -> s ("we just change the representation but the idea is the same")
$

#table(
  columns: 2,
  [symbol], [Meaning],
  [$overline(X)$], [sample mean],
  [$mu_0$], [claimed population mean],
  [$sigma$], [sample standard deviation],
  [n], [number of sample size],
)
- Then we find the degrees of freedom\
(_ To find the degrees of freedoms of a sample space we take sample space size ($n$) then negate with 1 so its basically n-1 _)\
- take the Critical t-table and find the t-crucial value for a particular significance value and Degrees of freedom  \
- If the t-value(the one which we find via formula)  is smaller that t-crucial we reject the null hypothesis else otherwise \

eg :-
=== Confusion matrix
#table(
  columns: 3,
  [], [1], [0],
  [1], [True positive], [false positive],
  [0], [false negate ], [True negative],
)
*Type one and Type two error*

- When [1,0] is true its called type one error  \
- When [0,1] is true its called type two error
=== Chi-square test ($chi^2$)
Chi-square tells how different the observed data is from the expected data \

*Steps to find chi-square($chi^2$)*\

- Make hypothesis(null hypothesis and alternative hypothesis)
- Find the expected value for the respective elements\
- compute the $chi^2$ value
Formula :-\
$
  chi^2 = sum_(i=0)^n ((O_i-E_i)^2)/E_i
$
#table(
  columns: 2,
  [Notation], [Meaning],
  [E], [Expected value ],
  [n], [Numbers of elements],
  [O], [observed value],
)
- Find the degrees of freedom
$
  "df" = k-1\
  "here k is the number of categories"
$

- Find the $chi^2$ crucial value for a particular significance value ($alpha$) and degrees of freedom(df) from the chi-square crucial table
- Check whether the number is greater that chi-square($chi^2$) value if then we reject the null hypothesis otherwise we fail to reject the Null hypothesis

#rect(
  width: 25%,
  height: 2.5%,
  fill: gray,
)[:: Important properties:]
+ Only positive values\
+ Right-skewed\
+ Shape depends on degrees of freedom\
+ Mean = df\
+ Variance = 2df\
As df increases → becomes more symmetric.


eg :-\
we're given a distribution of a dice thrown 60 times. We have to tell whether the dice is fair of not.
#table(
  columns: 2,
  [ Face ], [Observed ],
  [ 1    ], [5        ],
  [ 2    ], [8        ],
  [ 3    ], [9        ],
  [ 4    ], [12       ],
  [ 5    ], [13       ],
  [ 6    ], [13       ],
)
Null hypothesis ($h_o$):- the dice is fair\
Alternative hypothesis ($h_a$):- the dice is not fair\

Using the given steps :-

Expectation value :-\
$E_i=60/6 =10$

Using the formula\
$
  sum_(i=0)^n =((5-10)^2)/10+((8-10)^2)/10+((9-10)^2)/10 +... +((13-10)^2)/10 approx 5.2
$

Finding the degrees of freedoms \
$
  "df" =6-1=5
$
Looking at the chi-square($chi^2$) crucial table for df=5 and significance value of 0.05\
We find it to be $χ_"crit" approx 11.07$

Chi-value is smaller that the chi-critical value (5.2< 11.07)\

We reject the Null hypothesis\

=== ANOVA (analysis of variance)
It is used to compute the variation b/w sample mean and group mean .If its large then there is a clear interpretation that the sample mean is not the same as the other group means i.e all the groups are different.\
Null hypothesis = $mu_a approx mu_b approx mu_c... approx mu_z$ \
Alternative hypothesis =$mu_a != mu_b != mu_c... != mu_z$(at least one mean is different)

Steps to find ANOVA\
- Before starting we have to understand that we're tying to find the variation b/w the within sample size and groups of sample size between \ Here we start :-

- Find the each particular group mean \ $mu_a,mu_b .. mu_z$
- find the total mean (i really mean the total. Like every single value in each group / total number of value). I'll use this notation to represent it $mu_0$
- Find the Sum of Squares between groups (SSB)
$
  "SSB" = sum_(i=0)^k k(overline(X_i) - mu_0)^2\
$
#table(
  columns: 2,
  [K], [K is the number of group],
  [$overline(X_i)$], [each group mean ($mu_a,mu_b,mu_c ..$)],
  [$mu_0$], [the overall mean ],
)

- Find the Within-Group Variation (SSW)
$
  "SSW" = sum (X_"ij" -overline(X_i))^2
$
#table(
  columns: 2,
  [$X_"ij"$], [each value from the group of $overline(X_i)$],
  [$overline(X_i)$], [each group mean ($mu_a,mu_b,mu_c ..$)],
)

- Find the degrees of freedom for b/w the group and within the group \
$
  d f_b = k-1\
  d f_w = N-k\
$
#table(
  columns: 2,
  [k], [number of groups],
  [N], [total observations of values],
)
- Then find the Mean Squared for both between the group and within the group
$
  "MSB(mean Squared between)"="SSB"/(d f_b) \
  "MSW(mean Squared within)"="SSW"/(d f_w) \
$

- Using The F-statistic formula
$
  F="MSB"/"MSW"
$
- Use the F-critical table for a particular significance value ,and $d f_b$ , $d f_w$
- If the F-critical value is bigger that the F-value we reject the null hypothesis

eg:-
3 people are give 3 different diets for weight loss the weights are below

#table(
  columns: 3,
  [ Diet A ], [Diet B ], [ Diet C ],
  [2], [5], [6],
  [3], [4], [8],
  [4], [6], [7],
)
Following the given steps
- Null hypothesis($h_0$) = $mu_"diet a" approx mu_"diet b" approx mu_"diets c"$
- Alternative hypothesis($h_a$) = $mu_"diet a" != mu_"diet b" != mu_"diets c"$

Computing the group means \

Diet A mean:\
$
  mu_"diet a" =(2+3+4)/3 =3
$

Diet B mean:\
$
  mu_"diet b" =(5+4+6)/3 =5
$

Diet C mean:\
$
  mu_"diet c" =(6+8+7)/3 =7
$
computing overall mean

$
  mu_0 = (2+3+4+5+4+6+6+8+7)/9=5
$
Computing the SSB

Diet A :\
$
  3 dot (3-5)^2 =12
$

Diet B :\
$
  3 dot (5-5)^2 =0
$

Diet C :\
$
  3 dot (7-5)^2 =12
$

$
  "SSB" =12+0+12 =24
$

Computing SSW

Diet A (mean = 3):
$
  (2−3)^2+(3−3)^2+(4−3)^2=1+0+1=2
$
Diet B (mean = 5):
$
  (5−5)2+(4−5)2+(6−5)2=0+1+1=2
$
Diet C (mean = 7):
$
  (6−7)^2+(8−7)^2+(7−7)^2=1+1+0=2
$
$
  "SSW" = 2+2+2 =6
$
Computing Degrees of Freedom
$
  d f_b =k−1=2\
  d f_w =N−k=6\
$

Computing mean Squared

$
  "MSB"="SSB"/(d f_b)=24/2=12\
  "MSW"="SSW"/(d f_w)=6/6=1\
$

Computing F-statistic

$
  F="MSB"/"MSW"=12/1=12
$

From F-table at α = 0.05 and $d f_b -2 , d f_w =6$:
$
  F_"crit" approx 5.14\
  12 > 5.14 "reject the null hypothesis" h_0
$


=== Variance ratio test / F-test
It is used to check whether 2 population distribution have the same variance \

Steps to find Variance ratio
- Taking the hypothesis\
  Null hypothesis ($h_0$) = $sigma_1^2 = sigma_2^2$ \
  Alternative hypothesis ($h_0$) = $sigma_1^2 != sigma_2^2$

- find the variance of first population/sample distribution $s_1$
- find the variance of second population/sample distribution $s_2$
- then take the ratio of both of those
$
  F = S_1^2/S_2^2
$
- compute the degrees of freedom \
  for $n_1 = n_1-1$\
  for $n_2 = n_2-1$

- compare it with the F-critical table value for a particular significant value and Degrees of freedom. if greater that the value as usual reject the null hypothesis or otherwise


= Coordinate geometry
Coordinate geometry consist of working with Coordinate points in the the Coordinate axis could be 1D,2D,3D...\
== Quadrants
#import "@preview/tiptoe:0.3.1"

#show: lq.set-tick(inset: 2pt, outset: 2pt, pad: 0.4em)

#let filter(value, distance) = value != 0 and distance >= 5pt

#lq.diagram(
  xlim: (-10.8, 10),
  ylim: (-10, 10),
  xaxis: (position: 0, tip: tiptoe.stealth, filter: filter),
  yaxis: (position: 0, tip: tiptoe.stealth, filter: filter),
  lq.place(5, 5)[Q1(+,+)],
  lq.place(-5, 5)[Q2(-,+)],
  lq.place(-5, -5)[Q3(-,-)],
  lq.place(5, -5)[Q4(+,-)],
)


== Distance formula
Gives the distance b/w 2 points in the graph/Coordinate axis\
#lq.diagram(
  xlim: (-1, 3),
  ylim: (-1, 10),
  lq.plot(
    (1, 2),
    (1, 5),
    stroke: none,
  ),
  lq.place(1, 2.1)[(1,1)],
  lq.place(2, 6.1)[(2,5)],
)

Formula \
$
  D = sqrt((x_1-x_2)^2 +(y_1-y_2)^2)
$
Deriving the formula :-\
#lq.diagram(
  xlim: (-1, 3),
  ylim: (-1, 10),
  lq.plot(
    (1, 2, 2, 1),
    (2, 5, 2, 2),
  ),
  lq.place(0.7, 2.1)[(1,1)],
  lq.place(1.9, 6.1)[(2,5)],
)

Using the pythagouras to find the hypotenuse \
$
  "Hypotenuse"^2 = "Base"^2 - "height"^2\
  "Base is "(x_1,x_2) "and height is " (y_1-y_2) \
  "Replace the rest with pythagouras therom"
$
== Perpendicular Linear in a Cartesian
There is this property

#let x = lq.linspace(-8, 10, num: 10)
#let m = -2.2
#let b = 10

#lq.diagram(
  xlim: (-10, 20),
  ylim: (-10, 30),
  lq.plot(x, ys => m * ys + b, smooth: true, label: [line 1]),
  lq.plot(x, x => -(1 / m) * x * 4 + b, smooth: false, label: [line 2]),
)

As we can see the line 1 is Perpendicular to the line 2 \
The equation for line one is $y=m_1x+b$ obviously . but in case if we're not provided with the $m_2$ of line 2 this property tells how to find it.
$
  "Since we know that m="tan(theta)\
  "And we're assuming that the m of line 1 is " 90+theta,"cause it make sense if we look into the grpah "\
  "so taking that in accout we'll move forward"\
  tan(90+theta) =sin(90+theta)/cos(90+theta) =-cos(theta)/sin(theta)=cot(theta) \
  cot(theta) = -1 /tan(theta) \
  "And since we know that "tan(theta)"is m . we can just replce it with m "\
  m_1=-1/m_2 \
  therefore m_1*m_2 =-1
$

== Distance b/w paralle lines

#let x = lq.linspace(-8, 10, num: 10)
#let m = 3.2
#let b_1 = 10
#let b_2 = 40

#lq.diagram(
  lq.plot(x, ys => m * ys + b, label: [line 1]),
  lq.plot(x, ys => m * ys + b_2, label: [line 2]),
  lq.line(
    (3, 3 * m + b_2),
    (4, m * 4 + b),
    stroke: (dash: "dotted"), // Use "dotted", "dashed", or "densely-dotted"
  ),
  lq.place(4, 0 * m + b_2)[ D],

  lq.line(
    (3, 3 * m + b_2),
    (3, m * 3 + b),
    stroke: (dash: "dotted"), // Use "dotted", "dashed", or "densely-dotted"
  ),
)

Line 1 and line 2 are parallel and have to find D\
NOTE:- the value D is not the same as $c_2 - c_1$ its a different value . you will understand if you visualize it on Desmos by changing the m for 2 functions which have the same m but different c
$
  "since the "y_1 "and" y_2 "are parallel the only diffrence will be the intercept so,"\
  y_1-y_2 = abs(c_1-c_2)\
  "we've to find the D value what we've is the perpendicular to that line so we'll use the triangle property to find it "\
  sin(90-theta) =p/h = sin(90-theta) =D/ abs(c_1-c_2) ("all we've to do now is to find D")\
  cos(theta) =D/ abs(c_1-c_2) "  - equation 1" \
  "Now we know that ,"\
  tan(theta) =m = sin(theta)/cos(theta) = sqrt(1-cos(theta)^2)/cos(theta) \
  sqrt(1-cos(theta)^2)/cos(theta) =m = sqrt(1-cos(theta)^2)=cos(theta) dot m\
  "Squaring both side "\
  1-cos(theta)^2 = cos(theta)^2 m^2\
  "solving for" cos(theta)\
  0 =cos(theta)^2 + cos(theta)^2 m^2-1\
  0 =cos(theta)^2 (1+ m^2)-1\
  1/cos(theta)^2 = (1+ m^2)\
  therefore cos(theta) =1/sqrt(1+m^2)\
  "Now putting this in equation 1"\
  D/abs(c_1-c_2) =1/sqrt(1+m^2)\
  "Solving for D"\
  therefore D =abs(c_1-c_2) / sqrt(1+m^2)\
$

This is the distance b/w two parallel lines formula
$
  D =abs(c_1-c_2) / sqrt(1+m^2)\
$


= Linear equations
Little note before i go on .In these notes i'll not cover all the Linear equation from the basics cmon its very trivial\ And having that in mind i'll assume you know basic linear algebra if you're not i will highly recommend you the videos of 3blue 1brown

== Magnitutde
its nothing but the Distance of a vector from the origin .so the vector looks like this $abs(arrow(a))=sqrt(hat(i)^2 +hat(j)^2+hat(k)^2)$ (in terms of 3 dimensions) and we represent magnitude as $abs("variable")$

If you look closely you can see it kinda looks similar to the distance formula .... cause it is . It is derived from the distance formula.

== Dot product

So dot product in simple words can be expressed as projection of a vector_1 on a vector_2 .It gives the magnitude of vector_1 projection onto vector_2.

In terms of martix dot product it is a bit different but the way to  of martix dot product is the same.

dot product can be computed 2 different ways but the answer will be same :-

- $(a,b) dot (d,e) = (a d+b e)$
- $(a,b) dot (d,e) = |a| dot |b| dot cos(theta)$

  This is how its derived\
  given a 2 vectors\
  #lq.diagram(
    lq.line((0, 0), (3, 4)),
    lq.place(0, 0.5, [$A$]),
    lq.place(2, 0.5, [$v_1,|v_1|$]),
    lq.line((0, 0), (4, 2)),
    lq.place(1, 2, [$v_2,|v_2|$]),
    lq.line((3, 4), (4, 2), stroke: (dash: "dotted")),
    lq.place(4, 2, [$B$]),
    lq.place(3, 4, [$C$]),
    lq.place(4, 3, [$v_3,|v_3|$]),
  )

  what we're give is $v_1$, $v_2$ and there corresponding magnitudes  $|v_1|$ ,  $|v_2|$

  We want to find the projecting of $v_2$ onto $v_1$ \
  so we connect the tips of the v1 to v2 to create a triangle. we can find the difference in magnitude of b/w the $v_1$ and $v_2$ by doing a simple vector negation which is $v_3 = v_2-v_1$

  Now we've the tools to derive the vector dot product.we'll use the laws of cosine which is :-

  $
    b^2 =a^2+c^2 -2a c dot cos(B)\
    "put the right vector values we have "\
    |v_3|^2 =|v_1|^2+|v_2|^2-2 v_1 v_2 dot cos(theta)\
    "subsituting " |v_3| = |v_2|-|v_1|\
    (|v_2|-|v_1|)^2= |v_1|^2+|v_2|^2-2 v_1 v_2 dot cos(theta)\
    "expanding " (|v_2|-|v_1|)^2 \
    |v_2|^2 +|v_1|^2 -2 |v_2| |v_1| = |v_1|^2+|v_2|^2-2 v_1 v_2 dot cos(theta)\
    "cancel the thing which can cancel out "\
    therefore v_1 dot v_2 = |v_1| dot |v_2| dot cos(theta)
  $
eg :-  find the dot product of (2,3),(7,5)

- the first way := $(2 dot 7) + (3 dot 5)=29$
- second way := $sqrt(2^2 +3^2) dot sqrt(3^2+5^2) dot cos(45 degree)=29$

  but remember we can only use this method when we're provided with angle b/w $v_1$ and $v_2$ if we're not we can always use the first way and then find it is angle by $cos^(-1)$\

== cross product

This is used when give two vectors and we've to find another vector which is directely perpendicular to those 2 given vectors

i'll not go into it but here's the formula

the formula

For a = (a₁, a₂, a₃) and b = (b₁, b₂, b₃)\
a × b = (a₂b₃ − a₃b₂, a₃b₁ − a₁b₃, a₁b₂ − a₂b₁)

== Matrix
