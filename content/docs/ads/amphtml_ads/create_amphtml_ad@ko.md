---
$title: AMPHTML 광고 만들기
$order: 5
tutorial: true
---

{{ image('/static/img/docs/ads/amp-ad-framed-final.png', 597, 1240, align='right third', caption='완성된 AMPHTML 이미지 광고') }}

이 튜토리얼에서는  AMP 와 AMP가 아닌 페이지로 제공될 수 있는[AMPHTML 광고](/docs/ads/amphtml_ads.html)를 처음부터 만드는 방법에 대해 배울 것입니다. 이 튜토리얼에서 사용하는 광고형식은 간단한 이미지 광고입니다.

[AMPHTML 광고 스펙](/docs/ads/a4a_spec.html)에 따라, AMPHTML 광고는 전통적인 HTML 광고와 비슷하지만 그것들이 전통적인 HTML로 코딩된 반면에 AMPHTML 광고는 AMPHTML로 코딩되었습니다. AMPHTML로 광고를 만듦으로써, 광고는 AMP 페이지에 활용되는 최적화와 성능과 같은 장점을 가져 더욱 빠르고 가볍고 안전하게 웹에 광고할 수 있습니다. 무엇보다도, 이러한 광고는 AMP 페이지뿐만 아니라 웹 상의 _어느 곳에서나_ 전달될 수 있습니다.

## 다음을 배웁니다:

* [AMPHTML 광고 스펙](/docs/ads/a4a_spec.html)에 따른 유효한 AMPHTML 광고 만들기
* [`amp-pixel`](/docs/reference/components/amp-pixel.html) 컴퍼넌트를 사용하여 광고 보기 추적
* [AMP validator](https://validator.ampproject.org/#htmlFormat=AMP4ADS)를 사용하여 AMPHTML 광고 문법 검증하기

## 전제조건:

* HTML, CSS, JavaScript에 관한 기본 지식
* 브라우저와 텍스트 편집기 선택

<div class="start-button">
<a class="button" href="/docs/ads/amphtml_ads/create_shell.html"><span class="arrow-next">시작하기</span></a>
</div>

{% call callout('참고', type='success') %}
*광고를 처음부터 만들어보고 싶지 않습니까?*  다음 툴의 하나를 사용하여 당신의 AMPHTML 광고를 제작하십시오:

* [Celtra's Ad Creator](http://www.prnewswire.com/news-releases/celtra-partners-with-the-amp-project-showcases-amp-ad-creation-at-google-io-event-300459514.html)
* [Google Web Designer](https://support.google.com/webdesigner/answer/7529856)
* Adobe Animate (*곧*)
{% endcall %}   
