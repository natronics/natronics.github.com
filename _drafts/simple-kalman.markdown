---
layout: notebook
title: Simple, 1D Kalman Filter
---

<style>
  .body, .wheel { fill: #ccc; stroke: #aaa; }
  .mech { fill: none; stroke: #666; stroke-width: 8px; }
  .center { fill: #000000; fill-opacity:0.4; stroke:none }
  .track { fill: none; stroke: #000; stroke-width: 2px; stroke-linecap:butt; }
  .origin { fill: none; stroke: #aaa; stroke-width: 1px; stroke-linecap:butt; stroke-dasharray:2,1; shape-rendering: crispEdges; }
  .zero { fill: #999; }
  .data { font-family: monospace; fill: #000; stroke: none;}
  .var { font-family: MathJax_Math; font-style: italic; fill: #000; stroke: none; }
</style>

# Simple, 1D Kalman Filter

I wanted to look at the simplest example of a Kalman fitler. There is actually a
[really nice example on wikipedia](http://en.wikipedia.org/wiki/Kalman_filter#Example_application.2C_technical).
Copied right from the article, our setup is:

Consider a truck on frictionless, straight rails. Initially the truck is
stationary at position 0, but it is buffeted this way and that by random
uncontrolled forces. We measure the position of the truck every $\Delta t$
seconds, but these measurements are imprecise; we want to maintain a model of
where the truck is and what its velocity is. 

### Model:

<svg xmlns="http://www.w3.org/2000/svg" width="800" height="230">
  <defs id="defs">
    <marker refX="0" refY="0" orient="auto" id="Arrow1Mend" style="overflow:visible">
     <path d="M 0,0 5,-5 -12.5,0 5,5 0,0 z" transform="matrix(-0.4,0,0,-0.4,-4,0)" id="path3950" />
    </marker>
    <marker refX="0" refY="0" orient="auto" id="Arrow1Mstart" style="overflow:visible">
      <path d="M 0,0 5,-5 -12.5,0 5,5 0,0 z" transform="matrix(0.4,0,0,0.4,4,0)" id="path3947" />
    </marker>
  </defs>
  <path class="origin" d="m 400,195 0,25" />
  <text class="zero" x="406" y="224">0</text>
  <path class="origin" d="m 200,195 0,25" />
  <text class="zero" x="206" y="224">-10</text>
  <path class="origin" d="m 600,195 0,25" />
  <text class="zero" x="606" y="224">10</text>
  <path class="track" d="m 40,200 720,0" style="marker-start:url(#Arrow1Mstart);marker-end:url(#Arrow1Mend)" />
  <g id="cart" transform="translate(300,39)" style="cursor: ew-resize;">
   <path class="mech" d="m 40,140 60,-20 60,20 -20,-40 -80,0 z" />
   <rect class="body" width="200" height="120" x="0" y="0" />
   <circle class="wheel" cx="40" cy="140" r="20" />
   <circle class="wheel" cx="160" cy="140" r="20" />
   <path class="center"
    transform="translate(90,60)"
    d="M 10 0 C 4.4771514 0 0 4.4772 0 10 C -2.3684758e-15 15.5229 4.4771514 20 10 20 C 15.522849 20 20 15.5229 20 10 C 20 4.4772 15.522849 0 10 0 z M 10 1 C 14.970556 1 19 5.0294 19 10 L 10 10 L 10 19 C 5.029444 19 1 14.9706 1 10 L 10 10 L 10 1 z "
   />
  </g>
  <text class="var" x="690" y="14">x</text>
  <text id="xout" class="data" x="703" y="15"><tspan xml:space="preserve">=  0.00 m</tspan></text>
</svg>
<script>
    var cart_begin = 300;
    var cart_x = 300;
    var start_drag = 0;

    $("#cart").mousedown(function(ev) {
        start_drag = ev.clientX;
            if(ev.stopPropagation) ev.stopPropagation();
    if(ev.preventDefault) ev.preventDefault();
    ev.cancelBubble=true;
    ev.returnValue=false;

        $(window).mousemove(function(ev) {
            var x = cart_begin - (start_drag - ev.clientX);
            if (x > 500) x = 500;
            if (x < 100) x = 100;
            $("#cart").attr('transform', 'translate(' + x + ',39)');

            var units = ""+((x - 300)/20.0).toFixed(2);
            while (units.length < 6) {
                units = " "+units;
            }
            $("#xout tspan").text("=" + (units) + " m");
            cart_x = x;
        });

        $(window).mouseup(function(ev) {
            cart_begin = cart_x;
            $(window).unbind('mousemove');
        });
    });
</script>

> A truck on a frictionless track



