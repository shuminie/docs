---
$title: AMP 광고 소개
$order: 0
---

AMP 프로젝트의 목표는 사용자에게 빠른 웹 페이지를 전달하여 최고의 작업을 수행하는 것입니다. AMP 광고는 사용자에게 빠르고, 안전하고, 강력하고 효과적인 광고를 지원하여 이와 같은 목표를 포함합니다. 어떻게 가능할까요?

AMP 페이지로의 광고 전달은 전통적인 HTML 페이지의 광고 제공과 크게 다르지 않습니다:

{{ image('/static/img/docs/ads/ads_in_amp.svg', 647, 263, alt='AMP 페이지로의 광고 전달', align='' ) }}

1.  AMP 페이지에서 시작해보면, 게시자는 페이지에 광고를 게시할 슬롯을 생성합니다. 전통적으로, 이것은 자바스크림트의 스니펫을 삽입함으로써 완료됩니다. 하지만 AMP에서는 게시자가 특정한 광고 네트워크의 AMP 페이지에 [`<amp-ad>`](/docs/reference/components/amp-ad.html) 태그를 추가합니다. 더 자세한 내용은 [광고를 포함한 AMP 페이지로 모네타이징하기](/docs/ads/monetization.html) 를 참고하십시오.

2.  사용자가 AMP 페이지를 로드할 때, `<amp-ad>` 태그는 광고 네트워크에 광고 요청을 보냅니다. AMP 페이지로 광고를 반환하기 위해서, 광고 네트워크는 `amp-ad` 의 실행을 구축합니다. 자세한 내용은 [디스플레이 광고 제공을 위해 AMP와 통합하기](https://github.com/ampproject/amphtml/blob/master/ads/README.md) 를 참조하십시오.

3.  광고 네트워크는 광고자들이 설계한 창의적인 것들을 공급합니다. 광고게시자는 전통적인 HTML이나 새로운 형식인 [AMPHTML](/docs/ads/amphtml_ads.html)를 사용해서 창의적인 것들을 설계할 수 있습니다. 

## 지원되는 광고 네트워크

AMP는 많은 [광고 서버와 네트워크](/docs/ads/ads_vendors.html)를 지원합니다.

{% call callout('참고', type='note') %} 당신의 광고 기술을 AMP와 통합하고자 합니까? 이 [가이드라인](/docs/ads/integration-guide.html)을 참조하세요.
{% endcall %}

## 지원되는 광고

AMP는 전통적인 광고, 더 빠르고 좀 더 안전한 AMPHTML 광고를 모두 지원합니다. AMP 페이지의 광고는 설계 방식에 관계없이 외부 리소스와 유사하며 AMP의 모든 리소스에 적용되는 동일한 제양 조건 내에서 재생되어야 합니다. [AMP의 모든 리소스의 제약조건](/learn/about-how/).   AMP의 광고 필요조건에 대해 알고 싶다면 [이 가이드](https://github.com/ampproject/amphtml/blob/master/ads/README.md#constraints)를 참조하십시오.

### AMPHTML 광고로 더 빨라진 광고

AMPHTML 광고는 웹에서 광고하기에 더 빠르고, 더 가볍고 좀 더 안전한 방법입니다. 비록 AMP 페이지가 전통적인 HTML 광고들을 지원하지만, 이 광고들은 느리게 로드될 수 있습니다. 당신은 광고가 AMP 페이지의 나머지만큼 스스로 빨라지도록, AMPHTML로 광고를 설계할 수 있습니다. AMPHTML 광고는 오직 유효하다고 판단된 후에 전달되므로, 악성코드로부터 자유를 보장합니다. 무엇보다도,이들 광고는 단지 AMP 페이지만이 아니라 웹의 어디로나 전달될 수 있습니다.

AMPHTML 광고에 대해 궁금하다면 [AMPHTML 광고](/docs/ads/amphtml_ads.html) 를 참고하십시오.


## 시작하기

AMP 광고를 시작하기 위해서 다음 리소스를 참고하십시오:

* [광고를 포함한 AMP 페이지로 모네타이징하기](/docs/ads/monetization.html)
* [디스플레이 광고 제공을 위해 AMP와 통합하기](/docs/ads/adnetwork_integration.html)
* [AMPHTML 광고](/docs/ads/amphtml_ads.html)
