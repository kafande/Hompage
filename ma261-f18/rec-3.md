---
layout: default
---

## []() Recitation — September 11, 2018

There was a very annoying problem in Homework 7, Problem 7 which read as
follows: 

## Homework 7, Problem 7
Consider the following vector function
{% katex display %}
\mathbf{r}(t)=\langle 7\sqrt{2}t,e^{7t},e^{-7t}\rangle.
{% endkatex %}

(a) Find the unit tangent and unit normal vectors {% katex %} \mathbf{T}(t) {% endkatex %} and {% katex %} \mathbf{N}(t) {% endkatex %}. 

It seems that most of you did not have any trouble finding the tangent and unit tangent vectors. However, to make the process of finding the curvature (part (b) of this problem) go smoothly, you should really simplify (as much as possible) {% katex %} \mathbf T{% endkatex %} and {% katex %} \mathbf N {% endkatex %} so that they look like the following
{% katex display %}
\begin{aligned}
\mathbf r'(t)&=\langle \sqrt 2 e^{7t},e^{14t},-1\rangle,\\
\mathbf T(t)&=\frac 1{e^{14t}+1}\langle \sqrt 2 e^{7t},e^{14t},-1\rangle,\\
\mathbf T'(t)&=\frac 1{(e^{14t}+1)^2}\langle 7\sqrt 2e^{7t}(1-e^{14t}),14e^{14t},14e^{14t}\rangle,\\
\mathbf N(t)&=\frac 1{7\sqrt 2 e^{7t}(e^{14t}+1)}\langle 7\sqrt 2e^{7t}(1-e^{14t}),14e^{14t},14e^{14t}\rangle.
\end{aligned}
{% endkatex %}

After getting to this point, recall that
{% katex display %}
\kappa (t)=\frac{|\mathbf{T}'(t)|}{|\mathbf r'(t)|}=\frac{7\sqrt 2e^{7t}}{e^{14t}+1}\frac{1}{7(e^{7t}+e^{-7t})}=\frac{\sqrt 2e^{14t}}{(e^{14t}+1)^2}.
{% endkatex %}
But to get to the latter formula, you must be very meticulous.

## []() Quiz 3
Regarding Quiz 3, my first recitation spotted a mistake halfway through the quiz. I have decided to grade only the first and last problem of that quiz for my first recitation.

Back to [MA 261, Fall 2018](index.html#-course).
