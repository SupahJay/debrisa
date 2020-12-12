{% if thumb %}
	{% set svg_size = 'icon-xs ml-1' %}
{% else %}
	{% set svg_size = 'icon-lg ml-2' %}
{% endif %}

<div class="{% if not thumb %}js-video{% endif %} embed-responsive embed-responsive-16by9 {% if settings.theme_rounded %} box-rounded{% endif %} visible-when-content-ready">
	{% if thumb %}
		<div class="video-player">
	{% else %}
		<a href="#" class="js-play-button video-player">
	{% endif %}
			<div class="video-player-icon {% if thumb %}video-player-icon-small{% endif %}">{% include "snipplets/svg/play.tpl" with {svg_custom_class: "icon-inline icon-xs ml-1 svg-icon-invert " ~ svg_size ~ ""} %}</div>
	{% if thumb %}
		</div>
	{% else %}
		</a>
	{% endif %}
	<div class="js-video-image">
		<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="" class="lazyload video-image fade-in" alt="{{ 'Video de' | translate }} {% if template != 'product' %}{{ product.name }}{% else %}{{ store.name }}{% endif %}" style="display: none;">
		<div class="placeholder-fade">
		</div>
	</div>
</div>

{% if not thumb %}
	
	{# Empty iframe component: will be filled with JS on play button click #}

	<div class="js-video-iframe embed-responsive embed-responsive-16by9 {% if settings.theme_rounded %} box-rounded{% endif %}" style="display: none;" data-video-color="{{ settings.primary_color | trim('#') }}">
	</div>
{% endif %}