<form class="js-search-container js-search-form" action="{{ store.search_url }}" method="get">
	<div class="form-group m-0">
        <button type="submit" class="btn search-input-submit" value="{{ 'Buscar' | translate }}" aria-label="{{ 'Buscar' | translate }}">
        {{ 'Buscar' | translate }}
        {% include "snipplets/svg/search.tpl" with {svg_custom_class: "icon-inline icon-2x"} %}
        </button>
        <input class="js-search-input form-control search-input" autocomplete="on" type="search" name="q" aria-label="{{ '¿Qué estás buscando?' | translate }}" />
	</div>
</form>
<div class="js-search-suggest search-suggest">
    {# AJAX container for search suggestions #}
</div>
