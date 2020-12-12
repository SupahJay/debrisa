{% embed "snipplets/page-header.tpl" %}
    {% block page_header_text %}{{ "Mi cuenta" | translate }}{% endblock page_header_text %}
{% endembed %}

<section class="account-page">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h4 class="mb-1 mt-2">{{ 'Datos' | translate }}</h4>
                <div class="divider mt-0"></div>
                <div class="box p-3"> 
                    <h6 class="mb-0">{{ 'Datos Personales' | translate }} {{ 'Editar' | translate | a_tag(store.customer_info_url, '', 'btn-link btn-link-primary font-small float-right') }}</h6>
                    <div class="divider mx-0 mt-1 mb-2"></div>
                    <p class="font-small mb-0">
                        <strong>
                            {{customer.name}}
                        </strong>
                        <span class="d-block">
                            {{customer.email}}
                        </span>
                        {% if customer.cpf_cnpj %}
                            <span class="d-block">
                                {{ 'DNI' | translate }}: {{ customer.cpf_cnpj | format_cpf_cnpj }}
                            </span>
                        {% endif %}
                        {% if customer.phone %}
                            <span class="d-block">
                               <strong>{{ 'Teléfono' | translate }}</strong>: {{ customer.phone }}
                            </span>
                        {% endif %}
                    </p>
                </div>
                {% if customer.default_address %}
                    <div class="box p-3">
                        <h6 class="mb-0">{{ 'Mis direcciones' | translate }} {{ 'Editar' | translate | a_tag(store.customer_address_url(customer.default_address), '', 'btn-link btn-link-primary font-small float-right') }}</h6>
                        <div class="divider mx-0 mt-1 mb-2"></div>

                        <p class="mb-0">
                            <span class="d-block font-small my-2">
                                {{ customer.default_address | format_address_short }}
                            </span>
                            {{ 'Otras direcciones' | translate | a_tag(store.customer_addresses_url, '', 'btn-link btn-link-primary font-small') }}
                        </p>
                    </div>
                {% endif %}
            </div>
            <div class="col-md-8">
                <h4 class="mb-1 mt-2">{{ 'Mis Compras' | translate }}</h4>
                <div class="divider mt-0"></div>
                <div class="row">
                    {% if customer.orders %}
                        {% for order in customer.orders %}
                            {% set add_checkout_link = order.pending %}
                            {% set card_active = add_checkout_link ? true : false  %}
                            <div class="col-md-6">
                                {% embed "snipplets/card.tpl" with{card_footer: true, card_custom_class: 'box card-collapse', card_active: card_active, card_collapse: true} %}
                                    {% block card_head %}
                                        <div class="row">
                                            <div class="col">
                                                <h4 class="m-0">
                                                     <a class="btn-link-primary" href="{{ store.customer_order_url(order) }}"><strong>{{'Orden' | translate}}: #{{order.number}}</strong></a>
                                                </h4>
                                            </div>
                                            <div class="col text-right">
                                                <p class="m-0"><small>{{ order.date | i18n_date('%d/%m/%Y') }}</small></p>
                                            </div>
                                        </div>
                                        <span class="card-collapse-toogle d-none d-md-block">
                                            <a class="btn-link-primary" href="{{ store.customer_order_url(order) }}">
                                                {% include "snipplets/svg/eye.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                                            </a>
                                        </span>
                                    {% endblock %}
                                    {% block card_body %}
                                    <div class="container container-fluid p-0">
                                        <div class="row">
                                            <div class="col-7">
                                                <p class="font-small mb-2">
                                                    {% include "snipplets/svg/credit-card.tpl" with {svg_custom_class: "icon-inline mr-1 icon-w svg-icon-primary"} %} {{'Pago' | translate}}: <span class="{{ order.payment_status }}"> <strong>{{ (order.payment_status == 'pending'? 'Pendiente' : (order.payment_status == 'authorized'? 'Autorizado' : (order.payment_status == 'paid'? 'Pagado' : (order.payment_status == 'voided'? 'Cancelado' : (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}</strong></span>
                                                </p>
                                                <p class="font-small">
                                                    {% include "snipplets/svg/truck.tpl" with {svg_custom_class: "icon-inline mr-1 icon-w svg-icon-primary"} %} {{'Envío' | translate}}: <strong> {{ (order.shipping_status == 'fulfilled'? 'Enviado' : 'No enviado') | translate }} </strong>
                                                </p>
                                                <h4 class="m-0 mt-4">
                                                    <strong>{{'Total' | translate}}</strong> {{ order.total | money }}
                                                </h4>
                                                <a class="btn-link-primary font-small" href="{{ store.customer_order_url(order) }}">{{'Ver detalle >' | translate}}</a>
                                            </div>

                                            <div class="col-5">
                                                <div class="card-img-square-container">
                                                    {% for item in order.items %}
                                                        {% if loop.first %} 
                                                            {% if loop.length > 1 %} 
                                                                <span class="card-img-pill">{{ loop.length }} {{'Productos' | translate }}</span>
                                                            {% endif %}
                                                            {{ item.featured_image | product_image_url("") | img_tag(item.featured_image.alt, {class: 'card-img-square'}) }}
                                                        {% endif %}
                                                    {% endfor %}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {% endblock %}
                                    {% block card_foot %}
                                        {% if add_checkout_link %}
                                            <a class="btn btn-primary btn-small d-block" href="{{ order.checkout_url | add_param('ref', 'orders_list') }}" target="_blank">{{'Realizar el pago' | translate}}</a>
                                        {% elseif order.order_status_url != null %}
                                            <a class="btn btn-primary btn-small d-block" href="{{ order.order_status_url | add_param('ref', 'orders_list') }}" target="_blank">{% if 'Correios' in order.shipping_name %}{{'Seguí la entrega' | translate}}{% else %}{{'Seguí tu orden' | translate}}{% endif %}</a>
                                        {% endif %}
                                    {% endblock %}
                                {% endembed %}
                            </div>
                        {% endfor %}
                    {% else %}
                    <div class="col text-center">
                        {% include "snipplets/svg/cart.tpl" with {svg_custom_class: "icon-inline mr-1 icon-lg svg-icon-primary"} %}
                        <p class="mt-2">{{ '¡Hacé tu primera compra!' | translate }}</p>
                        {{ 'Ir a la tienda' | translate | a_tag(store.url, '', 'btn btn-primary btn-small w-100 mt-2') }}
                    </div>
                    {% endif %}
                </div>
                <table class="table hidden">
                    <thead>
                        <tr>
                            <th>{{'Orden' | translate}}</th>
                            <th>{{'Fecha' | translate}}</th>
                            <th>{{'Estado' | translate}}</th>
                            <th>{{'Pago' | translate}}</th>
                            <th>{{'Envío' | translate}}</th>
                            <th>{{'Total' | translate}}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {% for order in customer.orders %}
    	                    {% set add_checkout_link = order.pending %}
    	                    <tr class="{% if order.status == 'open' %}warning{% elseif order.status == 'closed' %}success{% elseif order.status == 'cancelled' %}danger{% endif %}">
    	                        <td data-label="{{'Orden' | translate}}"><a href="{{ store.customer_order_url(order) }}">#{{order.number}}</a></td>
    	                        <td data-label="{{'Fecha' | translate}}">{{ order.date | i18n_date('%d/%m/%Y') }}</td>
    	                        <td data-label="{{'Estado' | translate}}">{{ (order.status == 'open'? 'Abierta' : (order.status == 'closed'? 'Cerrada' : 'Cancelada')) | translate }}</td>
    	                        <td data-label="{{'Pago' | translate}}">{{ (order.payment_status == 'pending'? 'Pendiente' : (order.payment_status == 'authorized'? 'Autorizado' : (order.payment_status == 'paid'? 'Pagado' : (order.payment_status == 'voided'? 'Cancelado' : (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}</td>
    	                        <td data-label="{{'Envío' | translate}}">{{ (order.shipping_status == 'fulfilled'? 'Enviado' : 'No enviado') | translate }}</td>
    	                        <td data-label="{{'Total' | translate}}">{{ order.total | money }}</td>
    	                        {% if add_checkout_link %}
    	                            <td><a href="{{ order.checkout_url | add_param('ref', 'orders_list') }}" class="btn-link" target="_blank">{{'Realizar el pago >' | translate}}</a></td>
    	                        {% elseif order.order_status_url != null %}
    	                            <td><a href="{{ order.order_status_url | add_param('ref', 'orders_list') }}" target="_blank">{% if 'Correios' in order.shipping_name %}{{'Seguí la entrega' | translate}}{% else %}{{'Seguí tu orden' | translate}}{% endif %}</a></td>
    	                        {% endif %}
    	                    </tr>
                        {% endfor %}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>