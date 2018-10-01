---
layout: default
---

## []() Recitation — October 2, 2018
Here are the solutions to the mock Midterm 1.

## Problem 1
  Find the angle between the planes given by the equations 
  {% katex %}
  x+y=2
  {% endkatex %}
  and
  {% katex %}
  x+y+\sqrt 2z=\sqrt 6
  {% endkatex %}.

### Solution
To find the angle between the two planes we will use [dot product angle
formula](https://en.wikipedia.org/wiki/Dot_product#Geometric_definition). All we
need to do at this point is find the right vectors to use the formula on. As it
turns out, and you can draw a picture to convince yourself of this, the angle
made by the planes is precisely the one made by their normals, i.e., the vectors
{% katex %}
\mathbf n_1=\langle 1,1,0\rangle 
{% endkatex %}, 
{% katex %}
\mathbf n_2=\langle 1,1,\sqrt 2 \rangle
{% endkatex %}.
Therefore, 
{% katex display %}
\begin{aligned}
\cos(\theta)
&=\frac{\mathbf n_1\cdot \mathbf n_2}{|\mathbf n_1||\mathbf n_2|}\\
\theta&=\cos^{-1}\left(
\frac{\langle 1,1,0\rangle\cdot\langle 1,1,\sqrt 2\rangle}
{|\langle 1,1,0\rangle||\langle 1,1,\sqrt 2\rangle| }\right)
\\
&=\cos^{-1}\left(\frac 1{\sqrt 2}\right)\\
&=\frac\pi 4
\end{aligned}
{% endkatex %}

## Problem 2
  Find the length of the curve 
  {% katex %} 
  \mathbf r(t)=\langle t-\sin(t),1-\cos(t)\rangle
  {% endkatex %} on 
  {% katex %} 
  0\leq t\leq \pi 
  {% endkatex %}. (*Hint*: Use
  the double angle formula 
  {% katex %}
  \cos(2\theta)=1-2\sin^2(\theta)
  {% endkatex %}.)

### Solution
First let us find the derivative of {% katex %} \mathbf r(t){% endkatex %}, which is {%katex display %} \mathbf r'(t)=\langle 1-\cos(t),\sin(t)\rangle.{% endkatex %} Using the [arc length formula](https://en.wikipedia.org/wiki/Arc_length#Finding_arc_lengths_by_integrating),  we get the following sequence of equations

{% katex display %}
\begin{aligned}
\int_0^\pi|\mathbf r'(t)|\, dt
&=\int_0^\pi\sqrt{(1-\cos(t))^2+(\sin(t))^2}\, dt\\
&=\int_0^\pi\sqrt{1-2\cos(t)+\cos^2(t)+\sin^2(t)}\, dt\\
&=\int_0^\pi\sqrt{2-2\cos(t)}\, dt\\
&=\int_0^\pi \sqrt{2}\sqrt{1-\cos(t)}\, dt.
\end{aligned}
{% endkatex %}
It seems like we have reached an impasse. However, by the double angle formula, we can make the following substitution (which will allow us to finish the calculation)
{% katex display %}
\begin{aligned}
\int_0^\pi|\mathbf r'(t)|\, dt
&=\int_0^\pi\sqrt{4\sin^2(t/2)}\, dt\\
&=\int_0^\pi 2\sin(t/2)\, dt\\
&=.
\end{aligned}
{% endkatex %}

## Problem 3
  Find the area of the triangle with vertices 
  {% katex %}
  P(2,2,1)
  {% endkatex %}
  , 
  {% katex %}
  Q(1,-1,2)
  {% endkatex %}
  , and
  {% katex %}
  R(0,1,-1)
  {% endkatex %}
  . 

### Solution

## Problem 4
  The absolute minimum value of 
  {% katex %}
  f(x,y)=2+x^2y^2
  {% endkatex %}
  in the region 
  {% katex %}
  x^2/2+y^2\leq 1
  {% endkatex %} equals 
  {% katex %}
  2
  {% endkatex %}. The absolute maximum value of 
  {% katex %} 
  f
  {% endkatex %} in this region is?

### Solution

## Problem 5
  Find 
  {% katex %}
  f'(1)
  {% endkatex %}
  , where 
  {% katex %}
  f(t)=\mathbf u(t)\cdot\mathbf v(t)
  {% endkatex %}
  , 
  {% katex %}
  \mathbf u(1)=\langle 1,1,1\rangle
  {% endkatex %}
  ,
  {% katex %}
  \mathbf u'(1)=\langle 1,2,3\rangle
  {% endkatex %}
  , and 
  {% katex %}
  \mathbf v(t)=\langle t,t^2,t^3\rangle
  {% endkatex %}
  .

### Solution

## Problem 6
  Find the tangent plane to the level surface 
  {% katex %}
  xy^2z^3=12
  {% endkatex %}
  at 
  {% katex %}
  (3,2,1)
  {% endkatex %}
  .

### Solution

## Problem 7
  Find the directional derivative for 
  {% katex %}
  T(x,y)=(y-1)/(x-2)
  {% endkatex %}
  at 
  {% katex %}
  (3,-2)
  {% endkatex %}
  in the direction toward the origin.

### Solution

## Problem 8
  Suppose the graph of 
  {% katex %}
  z=g(x,y)
  {% endkatex %}
  intersects the plane 
  {% katex %}
  x=0
  {% endkatex %}
  along the curve
  {% katex %}
  z=y^3+2y^2+1
  {% endkatex %}. What is 
  {% katex %}
  g_y(0,2)
  {% endkatex %}
  ?

### Solution
