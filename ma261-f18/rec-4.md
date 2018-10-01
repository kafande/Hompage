---
layout: default
---

## []() Recitation — September 18, 2018

In Homework 12, you had the following problem (to which, I think, I gave you the wrong approach).

## Homework 12, Problem 4
The wave heights {% katex %} h {% endkatex %} in the open sea depend on the
 speed {% katex %} v {% endkatex %} of the wind and the length of time {% katex
 %} t {% endkatex %} that the wind has been blowing at that speed. Values of the
 function {% katex %} h=f(v,t) {% endkatex %} are recorded in feet in the
 following table.
 
 ![12-4](notes/14-4-22.gif 'Homework 12, Problem 4')
 
 Use the table to find a linear approximation to the wave height function when
 {% katex %} v {% endkatex %} is near {% katex %} 40 {% endkatex %} knots and {%
 katex %} t {% endkatex %} is near {% katex %} 20 {% endkatex %} hours. (Round
 your numerical coefficients to two decimal places.) {% katex %} f(v,t)\approx
 {% endkatex %}?
 
 I believe I told you that you needed to find {% katex %} f_v {% endkatex %} and
 {% katex %} f_t {% endkatex %}, but you need to do this only approximately.
 What that means is that we are going to find two values of {% katex %} f_v,f_t
 {% endkatex %} and average these. For {% katex %} f_v {% endkatex %}, for
 example, we do
 {% katex display %}
 \begin{aligned}
 f_{v,1}&\approx \frac{28-17}{10}=1.1,\\
 f_{v,2}&\approx \frac{40-28}{10}=1.2,\\
 f_v&\approx \frac{f_{v,1}+f_{v,2}}{2}=1.15.
 \end{aligned}
 {% endkatex %}
 So that gives us
 {%katex display %}
 f(v,t)\approx f_t(t-20)+1.15(v-40)+28.
 {% endkatex %}
 Can you finish the rest of the problem?

Back to [MA 261, Fall 2018](index.html#-course).
