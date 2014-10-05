---
layout: main
title: Oculata Certitudine
---

# Blag

<ul class="posts">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.date | date: "%B %Y" }} &ndash; {{ post.content | split: '</h1>' | first }}</h1></a>
    </li>
  {% endfor %}
</ul>

---


# Articles

## ISS Photo Locations ([read](/ISS-photo-locations/))

Visualization of the location of nearly every photograph taken from the International Space Station.

 - [View on github](https://github.com/natronics/ISS-photo-locations)

---


# Projects

## Science Hack Day 2014

I was at SHD San Fransisco 2014 and [worked on these projects](science-hack-day-2014)

 - [View on github](https://github.com/natronics/science-hack-day-2014)


## Open Space APIs

[open-notify.org](http://open-notify.org/) is a collection of NASA and space APIs for public use.

 - Live site: <http://api.open-notify.org/>
 - Documentation: [open-notify.org/Open-Notify-API/](http://open-notify.org/Open-Notify-API/)
 - [View on github](https://github.com/open-notify/Open-Notify-API)


## Portland State Aerospace Society

For many years I've been heavily involved at [PSAS](http://psas.pdx.edu/), an
educational group dedicated to building advanced avionics for high powered
rockets. A couple of examples of my work there:

 - [Research](http://psas.github.io/research-notebooks/)
 - [Technical Writing](https://github.com/psas/procedure-book)
 - [3D printed cable connectors](https://github.com/psas/avionics-cad/tree/master/av3/rocketnet-connector/3d)
 - [Diagrams](http://psas.pdx.edu/launch10/LV2_3_june.png)
 - [Video Production](http://www.youtube.com/watch?v=VAnPtbYMA8o)
 - [Data Analysis](http://psas.pdx.edu/lv2c_launchdata-2010-06-27/#index6h2)

And much more:

 - [PSAS on github](https://github.com/psas/)


## NASA Style Switch Guards

A 3D printed version of NASA's awesome looking toggle switch guards so you don't accidentally hit a switch in orbit.

 - [NASA Switch Guard](http://natronics.github.io/NASA-switch-guard/)


## EOL-Photos

A photo browser for NASA's Earth Observation Laboratory.

 - Live site: <http://spaceshots.org/>
 - Documentation: [natronics.github.io/EOL-Photos](/EOL-Photos/)
 - [View on github](https://github.com/natronics/EOL-Photos)


## D3-Smorgasbord

A very small collection of D3 charts and styles I've built

 - [View on github](https://github.com/natronics/D3-Smorgasbord)


## Mars Science laboratory Image Feed

Now defunct. I put this together in an afternoon to track new images coming from
MSL after she landed. It worked for a little bit, but JPL kept changing their
layout and I couldn't keep up with the scraper.

 - [View on github](https://github.com/natronics/MSL-Feed)

