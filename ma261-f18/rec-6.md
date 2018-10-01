---
layout: default
---

## []() Recitation — October 2, 2018
Here are the solutions to the [Practice Midterm 1](notes/MA261_Prac_Mid-1.pdf) in detail.

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
&=2[-2\cos(t/2)]_0^{\pi/2}\\
&=4.
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
First, we compute the vectors pointing from each vertex to the next
{% katex display %}
\begin{aligned}
\overrightarrow{PQ}&=\langle -1,-3,1\rangle,\\
\overrightarrow{PR}&=\langle -2,-1,-2\rangle,\\
\end{aligned}
{% endkatex %}
The magnitude of the cross product of these two vectors will give us the area of the parallelogram formed by these two vectors; and taking half of that will give us the area of the triangle in question. That is, 
{% katex display %}
\begin{aligned}
\frac 12\bigl|\overrightarrow{PQ}\times\overrightarrow{QR}\bigr|
&=\frac 12|\langle -1,-3,1\rangle\times \langle -2,-1,-2\rangle|\\
&=\frac 12|\langle 7,-4,-5\rangle|\\
&=\frac{\sqrt{90}}{2}\\
&=3\frac{\sqrt{10}}{2}.
\end{aligned}
{% endkatex %}

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
Using the constraint given to us, first we make the following substitution
{%katex display %}
F(x)=2+x^2(1-x^2/2)=2+x^2-x^4/2,
{% endkatex %}
and the derivative of this is 
{% katex display %}
F'(x)=2x-2x^3=2x(1-x^2).
{% endkatex %}
Thus, {% katex %} x=0,1 {% endkatex %}, but {% katex %}x=0{% endkatex %} will give us {% katex %} 2 {% endkatex %} which we already know to be the minimum, so {% katex %} x=1 {% endkatex %}, i.e., {% katex %} F(1)=f(1,\sqrt{1/2})=2.5 {% endkatex %} is our answer.

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
Using the formula {% katex %}d/dt(\mathbf u(t)\cdot \mathbf v(t))=\mathbf
u'(t)\cdot \mathbf v(t)+\mathbf u(t)\cdot \mathbf u'(t) {% endkatex %}, we get
{% katex display %}
\begin{aligned}
f'(1)
&=\mathbf u'(1)\cdot\mathbf v(1)+\mathbf u(1)\cdot\mathbf v'(1)\\
&=\langle 1,2,3\rangle\cdot \langle1,1,1\rangle
+\langle 1,1,1\rangle\cdot \langle1,2,3\rangle\\
&=12.
\end{aligned}
{% endkatex %}

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
First, we find the gradient of {%katex%} f(x,y,z)=xy^2z^3-12{%endkatex%} at {% katex %}(3,2,1){%
endkatex %} which is

{%katex display%} 
\begin{aligned}
\nabla f(x,y,z)&=\langle y^2z^3,2xyz^3,3xy^2z^2\rangle,\\
\nabla f(3,2,1)&=\langle 4,12,36\rangle.
\end{aligned}
{%endkatex%}
Thus, the tangent plane to the surface is
{%katex display%}
\begin{aligned}
4(x-3)+12(y-2)+36(z-1)&=0\\
x-3+3(y-2)+9(z-1)&=0\\
x+3y+9z&=18.
\end{aligned}
{%endkatex%}


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
First we normalize the direction vector, which is 
{%katex display%}
\mathbf u=\frac{\langle 3,-2\rangle}{\sqrt{13}}.
{%endkatex%}
Next we take the gradient of {%katex%}T{%endkatex%}, which is
{%katex display%}
\begin{aligned}
\nabla T(x,y)&=\left\langle \frac{1-y}{(x-2)^2},\frac{1}{x-2}\right\rangle\\
\nabla T(3,-2)&=\langle 3,1\rangle.
\end{aligned}
{%endkatex%}
Therefore, 
{%katex display%}
D_{\mathbf u}T(3,-2)
=\frac{\langle 3,1\rangle\cdot\langle 3,-2\rangle}{\sqrt 13}
=\frac{7}{\sqrt{13}}.
{%endkatex%}

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
Since we are looking for the partial of {%katex%}g{%endkatex%} at {%katex%}(0,2){%endkatex%} and {% katex %}
  z=y^3+2y^2+1
  {% endkatex %}, all we need to do is find the derivative of the latter at {%katex%}y=2{%endkatex%} with respect to {%katex%}y{%endkatex%}. That is, 
  {%katex display%}
  \begin{aligned}
  g_y(0,y)&=3y^2+4y\\
  g_y(0,2)&=12+8\\
  &=20.
  \end{aligned}
  {%endkatex%}

Back to [MA 261, Fall 2018](index.html#-course).
