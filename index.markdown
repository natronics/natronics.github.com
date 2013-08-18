---
layout: main
title: Something about me
---

# Blag

<ul class="posts">
  {% for post in site.posts %}
    <li>
      - <a href="{{ post.url }}">{{ post.date | date: "%B %Y" }} &ndash; {{ post.content | split: '</h1>' | first }}</h1></a>
    </li>
  {% endfor %}
</ul>

---

# Articles

## ISS Photo Locations ([read](http://natronics.github.io/ISS-photo-locations/))

A dataset of the location of nearly every photograph taken from the International Space Station.

 - [View on github](https://github.com/natronics/ISS-photo-locations)

---

# Projects

## Open Space APIs

[open-notify.org](http://open-notify.org/) is a collection of NASA and space APIs for public use.

 - Live site: <http://api.open-notify.org/>
 - Documentation: [open-notify.org/Open-Notify-API/](http://open-notify.org/Open-Notify-API/)
 - [View on github](https://github.com/open-notify/Open-Notify-API)


## EOL-Photos

A photo browser for NASA's Earth Observation Laboratory.

 - Live site: <http://eol-browser.herokuapp.com>
 - Documentation: [natronics.github.com/EOL-Photos](http://natronics.github.com/EOL-Photos/)
 - [View on github](https://github.com/natronics/EOL-Photos)


## D3-Smorgasbord

A collection of D3 charts and styles I've built

 - [View on github](https://github.com/natronics/D3-Smorgasbord)


