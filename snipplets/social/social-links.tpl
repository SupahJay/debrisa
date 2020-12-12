{% for sn in ['facebook', 'instagram', 'twitter', 'pinterest'] %}
    {% set sn_url = attribute(store,sn) %}
    {% if sn_url %}
        <a class="{% if circle %}social-icon-rounded{% else %}social-icon{% endif %}" href="{{ sn_url }}" target="_blank" aria-label="{{ sn }} {{ store.name }}">
            {% if sn == "facebook" %}
                {% if circle %}
                    {% include "snipplets/svg/facebook-f.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
                {% else %}
                    {% include "snipplets/svg/facebook-f.tpl" with {svg_custom_class: "icon-inline icon-md"} %}
                {% endif %}
            {% elseif sn == "instagram" %}
                {% if circle %}
                    {% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
                {% else %}
                    {% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline icon-md"} %}
                {% endif %}
            {% elseif sn == "pinterest" %}
                {% if circle %}
                    {% include "snipplets/svg/pinterest.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
                {% else %}
                    {% include "snipplets/svg/pinterest.tpl" with {svg_custom_class: "icon-inline icon-md"} %}
                {% endif %}
            {% else %}
                {% if circle %}
                    {% include "snipplets/svg/twitter.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}
                {% else %}
                    {% include "snipplets/svg/twitter.tpl" with {svg_custom_class: "icon-inline icon-md"} %}
                {% endif %}
            {% endif %}
        </a>
    {% endif %}
{% endfor %}