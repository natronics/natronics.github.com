---
layout: notebook
title: {{ nb.cells[0].source.split('\n')[0].split('#')[1] }}
---

{% extends 'display_priority.tpl' %}

{% block in_prompt %}
{% endblock in_prompt %}

{% block output_prompt %}
{%- endblock output_prompt %}

{% block input %}
<div class="code hidden" markdown="1">
{% raw %}{% highlight python %}{% endraw %}
{{ cell.source }}
{% raw %}{% endhighlight %}{% endraw %}
</div>
{% endblock input %}

{% block error %}
{{ super() }}
{% endblock error %}

{% block traceback_line %}
{{ line | indent | strip_ansi }}
{% endblock traceback_line %}

{% block execute_result %}

{% block data_priority scoped %}
{{ super() }}
{% endblock %}
{% endblock execute_result %}

{% block stream %}
{{ output.text }}
{% endblock stream %}

{% block data_svg %}
{{ output.data['image/svg+xml'] }}
{% endblock data_svg %}

{% block data_png %}
![](data:image/png;base64,{{ output.data['image/png'] }})
{% endblock data_png %}

{% block data_jpg %}
![jpeg]({{ output.metadata.filenames['image/jpeg'] | path2url }})
{% endblock data_jpg %}

{% block data_pdf %}
![]({{ output.metadata.filenames['application/pdf'] | path2url }})
{% endblock data_pdf %}

{% block data_latex %}
{{ output.data['text/latex'] }}
{% endblock data_latex %}

{% block data_html scoped %}
{{ output.data['text/html'] }}
{% endblock data_html %}

{% block data_markdown scoped %}
{{ output.data['text/markdown'] }}
{% endblock data_markdown %}

{% block data_text scoped %}
{{ output.data['text/plain'] | indent }}
{% endblock data_text %}

{% block markdowncell scoped %}
{{ cell.source }}
{% endblock markdowncell %}

{% block unknowncell scoped %}
unknown type  {{ cell.type }}
{% endblock unknowncell %}
