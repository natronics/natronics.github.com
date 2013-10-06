---
layout: notebook
title: 2013-09-28-cloud-chamber-physics
---


# Cloud Chamber Physics

At [Science Hack Day SF](http://sf.sciencehackday.com/about-shdsf/) 2013 there was a project to build a thermoelectric cooled [cloud chamber](http://en.wikipedia.org/wiki/Cloud_chamber). These are some notes about the hardware.


## Thermoelectric Cooling

The typical [thermoelectric cooler](http://en.wikipedia.org/wiki/Thermoelectric_effect) (TEC) will typically produce a maximum temperature difference of 70&deg;C. The amount of heat that can be absorbed is proportional to the current and time.

$$\begin{equation}\dot Q = k_PI\end{equation}$$

where $\dot Q$ is heat flow rate, $k_P$ is the Peltier coefficient of the TEC, and $I$ is the current.


### Power

So for a given heat rate and a known TEC we can guess the electrical power requirements.

$$\begin{equation}I = \frac{\dot Q}{k_P}\end{equation}$$

$$\begin{align}
P &= IV  \nonumber \\\
  &= \frac{V\dot Q}{k_P}
\end{align}$$

We can computer how big of a power supply we need for each TEC:


{% highlight python %}
# Define TECs
TEC_12 = {
    'v': 12,     # 12 volt version, TEC1-12710
    'kp': 9.6,   # pelter coef
}

TEC_5 = {
    'v': 5,     # 5 volt version
    'kp': 9.6,  # pelter coef
}

# calc power
def power(Q, tec):
    v = tec['v']
    k = tec['kp']
    return (v*Q)/k
{% endhighlight %}

We want to suck the maximum power from both, which according to the datasheets is about 90 Watts(thermal)


{% highlight python %}
print "Power supply for bottom TEC: ", power(90, TEC_12), '  Watts'
print "Power supply for top TEC      ", power(90, TEC_5), 'Watts' 
{% endhighlight %}

<div class="output">
<pre>
<span class="prompt">&gt;</span> Power supply for bottom TEC:  112.5   Watts
<span class="prompt">&gt;</span> Power supply for top TEC       46.875 Watts
</pre>
</div>

Luckily we have two ~100 watt power supplies.

 - [Download this notebook](https://raw.github.com/natronics/natronics.github.com/master/notebooks/2013-09-28-cloud-chamber-physics.ipynb)
 - [View on nbviewer](http://nbviewer.ipython.org/urls/raw.github.com/natronics/natronics.github.com/master/notebooks/2013-09-28-cloud-chamber-physics.ipynb)
