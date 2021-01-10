{% set has_social_network = store.facebook or store.twitter or store.pinterest or store.instagram %}
{% set has_footer_contact_info = (store.whatsapp or store.phone or store.email or store.address or store.blog) and settings.footer_contact_show %}          

{% set has_footer_menu = settings.footer_menu and settings.footer_menu_show %}
{% set has_footer_menu_secondary = settings.footer_menu_secondary and settings.footer_menu_secondary_show %}
{% set has_footer_menu_third = settings.footer_menu_third and settings.footer_menu_third_show %}
{% set has_footer_about = settings.footer_about_show and (settings.footer_about_title or settings.footer_about_description) %}
{% set has_payment_logos = settings.payments %}
{% set has_shipping_logos = settings.shipping %}
{% set has_shipping_payment_logos = has_payment_logos or has_shipping_logos %}

{% set has_seal_logos = store.afip or ebit or settings.custom_seal_code or ("seal_img.jpg" | has_custom_image) %}
{% set show_help = not has_products and not has_social_network %}
<footer class="js-hide-footer-while-scrolling display-when-content-ready" data-store="footer">
	<div class="container px-md-5">
		<div class="row element-footer">
			
			{% if template != 'password' %}

				{# About #}
				{% if has_footer_about %}

					<div class="col-md mb-4">
						{% if settings.footer_about_title %}
							<h4 class="h3">{{ settings.footer_about_title }}</h4>
						{% endif %}
						{% if settings.footer_about_description %}
							<p>{{ settings.footer_about_description }}</p>
						{% endif %}
					</div>

				{% endif %}

				{# Foot Nav #}
				{% if has_footer_menu %}
					<div class="col">
						{% if settings.footer_menu_title %}
							<h4 class="h3">{{ settings.footer_menu_title }}</h4>
						{% endif %}
						{% include "snipplets/navigation/navigation-foot.tpl" %}
					</div>
				{% endif %}

				{# Foot Nav Secondary #}
				{% if has_footer_menu_secondary %}
					<div class="col">
						{% if settings.footer_menu_secondary_title %}
							<h4 class="h3">{{ settings.footer_menu_secondary_title }}</h4>
						{% endif %}
						{% include "snipplets/navigation/navigation-foot-secondary.tpl" %}
					</div>
				{% endif %}
				{% if has_footer_menu_secondary %}
					<div class="col">
						{% if settings.footer_menu_third_title %}
							<h4 class="h3">{{ settings.footer_menu_third_title }}</h4>
						{% endif %}
						{% include "snipplets/navigation/navigation-foot-third.tpl" %}
					</div>
				{% endif %}

				{# Contact info #}
				{% if has_footer_contact_info %}
					<div class="col col-md mb-4">
						{% if settings.footer_contact_title %}
							<h4 class="h3">{{ settings.footer_contact_title }}</h4>
						{% endif %}
						{% include "snipplets/contact-links.tpl" %}
					</div>
				{% endif %}

			{% endif %}
			
			{# Imagens #}
			<div class="col-md mb-4">
				<img src="{{ 'images/simple-footer.png' | static_url }}" />
			</div>



			
			{# Social #}
	 		{% if has_social_network and false %}

				<div class="col-md mb-4{% if template == 'password' %} text-center{% endif %}">
					{% if settings.footer_social_title %}
						<h4 class="h3">{{ settings.footer_social_title }}</h4>
					{% endif %}
					{% include "snipplets/social/social-links.tpl" with {'circle': true} %}
				</div>

			{% elseif show_help %}

				<div class="col-md mb-4{% if template == 'password' %} text-center{% endif %}">
					{% if settings.footer_social_title %}
						<h4 class="h3">{{ settings.footer_social_title }}</h4>
					{% endif %}

					{# Social icons that work as examples #}
					<a class="social-icon-rounded">
						{% include "snipplets/svg/facebook-f.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
					</a>
					<a class="social-icon-rounded">
						{% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
					</a>
					<a class="social-icon-rounded">
						{% include "snipplets/svg/twitter.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
			        </a>
				</div>

			{% endif %}

		</div>

		{% if template != 'password' %}

			{% if has_shipping_payment_logos or has_seal_logos %}

				<div class="divider mb-5"></div>

				<div class="row element-footer">

					{# Logos Payments and Shipping #}
			 		{% if has_shipping_payment_logos %}
			 			<div class="col-md-9">
				 			<div class="footer-payments-shipping-logos">
				 				{% if has_payment_logos %}
				 					<div class="row mb-4">
				 						<div class="col-md-4">
					 						<h4 class="h3">{{ "Medios de pago" | translate }}</h4>
					 					</div>
					 					<div class="col-md-8">
					 						{% include "snipplets/logos-icons.tpl" with {'payments': true} %}
					 					</div>
				 					</div>
								{% endif %}
				 				{% if has_shipping_logos %}
				 					<div class="row mb-4">
					 					<div class="col-md-4">
					 						<h4 class="h3">{{ "Medios de envío" | translate }}</h4>
					 					</div>
					 					<div class="col-md-8">
					 						{% include "snipplets/logos-icons.tpl" with {'shipping': true} %}
					 					</div>
				 					</div>
				 				{% endif %}
							</div>
						</div>
					{% endif %}

					{# AFIP - EBIT - Custom Seal #}
					{% if has_seal_logos %}
		 				<div class="col-md-3">
		 					{% if store.afip %}
		                        <div class="footer-logo afip seal-afip">
		                            {{ store.afip | raw }}
		                        </div>
		                    {% endif %}
		                    {% if ebit %}
		                        <div class="footer-logo ebit seal-ebit">
		                            {{ ebit }}
		                        </div>
		                    {% endif %}
		                    {% if "seal_img.jpg" | has_custom_image or settings.custom_seal_code %}
			                    {% if "seal_img.jpg" | has_custom_image %}
			                        <div class="footer-logo custom-seal">
			                            {% if settings.seal_url != '' %}
			                                <a href="{{ settings.seal_url }}" target="_blank">
			                            {% endif %}
			                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "seal_img.jpg" | static_url }}" class="custom-seal-img lazyload" alt="{{ 'Sello de' | translate }} {{ store.name }}" />
			                            {% if settings.seal_url != '' %}
			                                </a>
			                            {% endif %}
			                        </div>
			                    {% endif %}
			                    {% if settings.custom_seal_code %}
			                        <div class="footer-logo custom-seal custom-seal-code">
			                            {{ settings.custom_seal_code | raw }}
			                        </div>
			                    {% endif %}
				            {% endif %}
		 				</div>
					{% endif %}

				</div>

			{% endif %}

		{% endif %}
	</div>
	<div class="footer-lega text-center">


	<img src="{{ 'images/stg.png' | static_url }}" />
	
	
	{% if false %}
		<div class="container-fluid px-md-5">
			<div class="row">
			
				<div class="col-md text-md-left mb-3 mb-md-0">
	                {{ "Copyright {1} - {2}. Todos los derechos reservados." | translate( (store.business_name ? store.business_name : store.name) ~ (store.business_id ? ' - ' ~ store.business_id : ''), "now" | date('Y') ) }}
	            </div>

				<div class="col-md text-left text-md-right">
	                {#
	                La leyenda que aparece debajo de esta linea de código debe mantenerse
	                con las mismas palabras y con su apropiado link a Tienda Nube;
	                como especifican nuestros términos de uso: http://www.tiendanube.com/terminos-de-uso .
	                Si quieres puedes modificar el estilo y posición de la leyenda para que se adapte a
	                tu sitio. Pero debe mantenerse visible para los visitantes y con el link funcional.
	                Os créditos que aparece debaixo da linha de código deverá ser mantida com as mesmas
	                palavras e com seu link para Nuvem Shop; como especificam nossos Termos de Uso:
	                http://www.nuvemshop.com.br/termos-de-uso. Se você quiser poderá alterar o estilo
	                e a posição dos créditos para que ele se adque ao seu site. Porém você precisa
	                manter visivél e com um link funcionando.
	                #}
	                {{ new_powered_by_link }}
	            </div>
	            
	        </div>
    	</div>
	{% endif %}
    </div>
</footer>