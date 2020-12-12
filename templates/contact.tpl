{% embed "snipplets/page-header.tpl" %}
	{% block page_header_text %}{{ "Contacto" | translate }}{% endblock page_header_text %}
{% endembed %}

{% set has_contact_info = store.whatsapp or store.phone or store.email or store.address or store.blog or store.contact_intro %} 
<section class="contact-page">
	<div class="container">
		<div class="row justify-content-md-center">
			{% if has_contact_info %}
				<div class="col-md-4">
					{% if store.contact_intro %}
						<p class="mb-4">{{ store.contact_intro }}</p>
					{% endif %}
					{% include "snipplets/contact-links.tpl" %}
				</div>
			{% endif %}
			<div class="col-md-8">
				{% if product %}  
					<div class="mb-4">
						<div class="row align-items-center justify-content-md-left">
							<div class="col-auto">
								<img src="{{ product.featured_image | product_image_url('thumb') }}" title="{{ product.name }}" alt="{{ product.name }}" />
							</div>
							<div class="col-auto">
								<p>{{ "Estás consultando por el producto:" | translate }} </br> {{ product.name | a_tag(product.url) }}</p>
							</div>
						</div>
					</div>
				{% endif %}	
				{% if contact %}
					{% if contact.success %}
						<div class="alert alert-success">{{ "¡Gracias por contactarnos! Vamos a responderte apenas veamos tu mensaje." | translate }}</div>
					{% else %}
						<div class="alert alert-danger">{{ "Necesitamos tu nombre y un email para poder responderte." | translate }}</div>
					{% endif %}
				{% endif %}	
				
				{% embed "snipplets/forms/form.tpl" with{form_id: 'contact-form', form_custom_class: 'js-winnie-pooh-form mb-4', form_action: '/winnie-pooh', submit_custom_class: 'btn-block', submit_name: 'contact', submit_text: 'Enviar' | translate } %}
					{% block form_body %}

						{# Hidden inputs used to send attributes #}

						<div class="winnie-pooh hidden">
							<label for="winnie-pooh">{{ "No completar este campo" | translate }}:</label>
							<input type="text" id="winnie-pooh" name="winnie-pooh">
						</div>
						<input type="hidden" value="{{ product.id }}" name="product"/>
	                	<input type="hidden" name="type" value="contact" />

						{# Name input #}

						{% embed "snipplets/forms/form-input.tpl" with{input_for: 'name', type_text: true, input_name: 'name', input_id: 'name', input_label_text: 'Nombre' | translate } %}
						{% endembed %}

						{# Email input #}

						{% embed "snipplets/forms/form-input.tpl" with{input_for: 'email', type_email: true, input_name: 'email', input_id: 'email', input_label_text: 'Email' | translate } %}
						{% endembed %}

						{# Phone input #}

						{% embed "snipplets/forms/form-input.tpl" with{input_for: 'phone', type_tel: true, input_name: 'phone', input_id: 'phone', input_label_text: 'Teléfono' | translate } %}
						{% endembed %}

						{# Message textarea #}

						{% embed "snipplets/forms/form-input.tpl" with{text_area: true, input_for: 'message', input_name: 'message', input_id: 'message', input_rows: '7', input_label_text: 'Mensaje' | translate } %}
						{% endembed %}

					{% endblock %}
				{% endembed %}
			</div>
		</div>
	</sdiv>
</section>