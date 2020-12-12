{% set has_product_video = store.has_product_video and product.video_url %}
{% if has_product_video %}
	{% if product.images_count > 1 %}
		{% set video_index = product.images_count %}
	{% else %}
		{% set video_index = 1 %}
	{% endif %}

	{% if thumb %}
		<a href="#" class="js-product-thumb js-video-thumb product-thumb d-block mb-3 {% if settings.theme_rounded %} box-rounded-small{% endif %}" data-thumb-loop="{{ video_index }}">
			{% include 'snipplets/video-item.tpl' with {thumb: true} %}
		</a>
	{% else %}
		<div class="js-product-slide js-product-video-slide swiper-slide slider-slide" data-image-position="{{ video_index }}">

			{# Hidden video element to show inside gallery popup (only desktop) #}

			<a class="hidden" data-fancybox="product-gallery" href="#product-video-modal">
			</a>
			<div id="product-video-modal" style="display: none;">
				{% include 'snipplets/video-item.tpl' %}
			</div>

			{# Visible video inside slider #}

			<div class="product-video-container">
				<div class="product-video">
					{% include 'snipplets/video-item.tpl' %}
				</div>
			</div>
		</div>
	{% endif %}
{% endif %}
