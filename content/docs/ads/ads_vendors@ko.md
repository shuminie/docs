---
$title: 광고 벤더
$order: 6
---

이 문서는 [`amp-ad`](/docs/reference/components/amp-ad.html) 구성 요소와 함께 사용할 수 있도록 내장된 환경설정을 제공하는 광고 벤더들과 플랫폼들의 목록입니다. 특정 벤더의 환경 설정에 대한 자세한 내용은 해당 벤더의 링크를 클릭하십시오.

{% call callout('참고', type='note') %}
AMP 통합을 제공하기를 원하는 광고 벤더라면, [AMP 통합을 위한 개발자 가이드라인](https://github.com/ampproject/amphtml/blob/master/ads/README.md#developer-guidelines-for-a-pull-request)을 참고하십시오.
{% endcall %}


{% set who = g.doc('/content/includes/who.yaml', locale=doc.locale) %}

<div class="ads-container">
  {% for section in who.tech_companies.sections %}
    {% if section.title == 'Ads' %}
        <ol class="item-container">
        {% for item in section.section_items %}
          <li class="item">
            {% if item.link %}
              <a href="{{item.link}}">{{item.title}}</a>
            {% else %}
              {{item.title}}
            {% endif %}
          </li>
        {% endfor %}
        </ol>
      {% endif %}
  {% endfor %}
</div>

