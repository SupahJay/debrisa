{% if order_notification and status_page_url %}
    <div data-url="{{ status_page_url }}" class="js-notification notification notification-primary" style="display:none;">
        <div class="container">
            <div class="row">
                <div class="col">
                    <a href="{{ status_page_url }}"><strong>{{ "Seguí acá" | translate }}</strong> {{ "tu última compra" | translate }}</a>
                    <a class="js-notification-close ml-3" href="#">
                        {% include "snipplets/svg/times.tpl" with {svg_custom_class: "icon-inline svg-icon-text icon-lg"} %}
                    </a>
                </div>
            </div>
        </div>
    </div>
{% endif %}

{% if add_to_cart %}
    <div class="js-alert-added-to-cart notification-floating notification-hidden {% if add_to_cart_fixed %}notification-fixed{% endif %}" style="display: none;">
        <div class="notification notification-primary notification-cart position-relative {% if not add_to_cart_mobile %}col-12 float-right{% endif %}">
            <div class="js-cart-notification-arrow-up notification-arrow-up"></div>
            <div class="js-cart-notification-close notification-close">
                {% include "snipplets/svg/times.tpl" with {svg_custom_class: "icon-inline icon-2x  svg-icon-primary notification-icon"} %}
            </div>
            <div class="js-cart-notification-item row">
                <div class="col-2 pr-0 notification-img">
                    <img src="" class="js-cart-notification-item-img img-fluid" />
                    {% include "snipplets/svg/check-circle-filled.tpl" with {svg_custom_class: "icon-inline icon-sm  svg-icon-primary"} %}
                </div>
                <div class="col-10 text-left">
                    <div class="mb-1 mr-4">
                        <span class="js-cart-notification-item-name"></span>
                        <span class="js-cart-notification-item-variant-container" style="display: none;">
                            (<span class="js-cart-notification-item-variant"></span>)
                        </span>
                    </div>
                    <div class="mb-1">
                        <span class="js-cart-notification-item-quantity"></span>
                        <span> x </span>
                        <span class="js-cart-notification-item-price"></span>
                    </div>
                    <strong>{{ '¡Agregado al carrito con éxito!' | translate }}</strong>
                </div>
            </div>
            <div class="divider my-3"></div>
            <div class="row text-primary h5 font-weight-normal mb-3">
                <span class="col-auto text-left ml-2">
                    <strong>{{ "Total" | translate }}</strong> 
                    (<span class="js-cart-widget-amount">
                        {{ "{1}" | translate(cart.items_count ) }} 
                    </span>
                    <span class="js-cart-counts-plural" style="display: none;">
                        {{ 'productos' | translate }}):
                    </span>
                    <span class="js-cart-counts-singular" style="display: none;">
                        {{ 'producto' | translate }}):
                    </span>

                </span>
                <strong class="js-cart-total col text-right mr-2">{{ cart.total | money }}</strong>
            </div>
            <a href="#" class="js-modal-open js-cart-notification-close js-fullscreen-modal-open btn btn-primary btn-medium w-100 d-inline-block" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart">
                {{'Ver carrito' | translate }}
            </a>
        </div>
    </div>
{% endif %}