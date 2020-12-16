{% if settings.show_instafeed and store.instagram %}
    <section class="section-instafeed-home" data-store="instagram-feed">

    {% if false %}
        <div class="container">
            <div class="row">
                {% set instuser = store.instagram|split('/')|last %}
                <div class="col-12 text-center">
                    {% if store.instagram %}
                    <a target="_blank" href="{{ store.instagram }}" class="instafeed-title{% if settings.theme_rounded %} svg-icon-primary{% else %} svg-icon-text{% endif %}" aria-label="{{ 'Instagram de' | translate }} {{ store.name }}">{% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline icon-3x mr-3"} %} <h3 class="h1-md instafeed-user{% if settings.theme_rounded %} text-primary{% endif %}">{{ instuser }}</h3></a>
                    {% else %}
                    <div class="instafeed-title">{% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline icon-3x mr-3"} %} <h3 class="h1-md instafeed-user{% if settings.theme_rounded %} text-primary{% endif %}">Instagram</h3></div>
                    {% endif %}
                </div>
            </div>
        </div>
    {% endif %}

        <div class="container-fluid">
            <div class="row">
                <div class="col-4 col-md-2">
                {% set instuser = store.instagram|split('/')|last %}
                    <a target="_blank" href="{{ store.instagram }}" class="instafeed-title"><h3 class="instafeed-user">@{{ instuser }}</h3></a>
                    <h4 class="sub-title">Siga-nos no Instagram</h4>
                </div>

                <div class="col">
                    <div id="instafeed" class="row no-gutters">  
                    </div>
                </div>
            </div>
        </div>
    </section>
{% endif %}