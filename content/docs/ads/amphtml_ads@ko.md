---
$title: AMPHTML 광고
$order: 5
toc: true
components:
 - anim
---

[TOC]

## AMPHTML 광고가 무엇입니까?

AMPHTML 광고는 웹에서 광고하기에 더 빠르고 가볍고 안전한 방법입니다. 비록 AMP 페이지가 전통적인 HTML 광고를 지원하지만, 이러한 광고들은 느리게 로드될 수 있습니다. 광고를 AMP 페이지의 나머지만큼 빨라지도록 만들기 위해서, 당신은 AMPHTML으로 광고를 설계할 수 있습니다. AMPHTML 광고는 오직 유효하다고 판단된 후에 전달되므로,광고가 안전하고 성과가 있음을 보장합니다. 무엇보다도, 이러한 광고는 _오직 AMP 페이지에서가 아니라_ 웹의 어디로나 전달될 수 있습니다.

AMPHTML 광고는 [AMPHTML 광고 스펙](/docs/ads/a4a_spec.html)을 따라 AMP HTML로 쓰여집니다. (AMP HTML + CSS). 이는 광고가 전통적으로 나쁜 광고 성능의 가장 큰 원인이었던 임의의 자바스크립트를 더 이상 실행할 수 없다는 것을 의미한다. 따라서, 마치 핵심 AMP처럼, 핵심 광고 자바스크립트 사용 사례들은 광고로부터 좋은 작동을 보장하는 AMP 오픈 소스 프로젝트를 통해서 제대로 설계된다.

### 이점

왜 AMPHTML 광고가 전통적인 광고보다 좋은가요? 

1.  **더 빠릅니다**: AMPHTML 광고는 페이지 렌더링 과정에서 더 일찍 요청되고, 사용자가 막 광고를 보려하기 전에 즉시 내보이기 때문에 더 빠릅니다. AMPHTML 광고의 줄어든 크기 또한 속도를 증가시킵니다.
1.  **더 가볍습니다**: AMPHTML 광고 번들은 일반적으로 광고의 파일 크기를 줄이는 광고 기능을 사용했습니다. 일단 페이지에 있으면, AMPHTML 광고 또한 더 적은 리소스들을 소비합니다. 예를들어, 규칙적인 광고에서 그들 자신의 정보를 요청하는 10명의 추적자 대신에, AMPTHML 광고는 모든 데이터를 한번 수집해서 관심있는 추적자들에게 배포합니다. 
1.  **조정됩니다**: AMP 페이지에서, [AMP runtime](https://www.ampproject.org/docs/fundamentals/spec#amp-runtime) 은 휴대폰의 제한된 리소스를 적절한 시간에 적절한 구성 요소로 조정해서 최상의 사용자 환경을 제공할 수 있습니다. 예를 들어, 애니메이션이 포함된 AMPHTML 광고는 광고가 현재 뷰포트에 없는 경우 일시 중지됩니다.
1.  **더 끌립니다**: 사용자는 그들이 볼 수 없는 광고에 끌릴수 없습니다. 더 빠른 광고는 더 높은 시각화로 이끌고 따라서 더 높은 클릭률을, 궁극적으로 더 나은 광고 성능으로 이끕니다.
1.  **악성코드로부터 안전합니다**: 광고는 제공되기 전에 검사되기 때문에 AMPHTML  광고를 통해서 악성코드가 퍼지는 것은 불가능합니다. 이 때문에, 광고게시자들은 안전한 사용자 경험과 긍정적인 브랜드 인식을 보장합니다.
1.  **더 융통성있습니다**: AMPHTML 광고는 모든 장치뿐만 아니라 AMP와 AMP가 아닌 웹 페이지 모두에서 작동하도록 설계되었습니다.


### 형식

AMPHTML 광고는 유연하고 역동적이며, 두서너 가지 예를 들자면 캐러셀, 패럴랙스, 라이트박스와 같은 많은 창의적인 형식들을 허락합니다. 오픈소스 AMPHTML 광고 탬플릿[AMP by Example](https://ampbyexample.com/amp-ads/#amp-ads/advanced_ads)을 활용하여 시작해보세요.

<table class="nocolor">
  <tr>
    <td class="col-thirty"><amp-anim width="410" height="731" layout="responsive"
    src="/static/img/docs/ads/amp-ad-01-carousel.gif">
    </amp-anim></td>
    <td class="col-thirty"><amp-anim width="410" height="731" layout="responsive"
    src="/static/img/docs/ads/amp-ad-02-video-parallax.gif">
    </amp-anim></td>
    <td class="col-thirty"><amp-anim width="410" height="731" layout="responsive"
    src="/static/img/docs/ads/amp-ad-03-lightbox.gif">
    </amp-anim></td>
  </tr>
  <tr>
    <td>캐러셀</td>
    <td>비디오 패럴랙스</td>
    <td>라이트박스</td>
  </tr>
</table>


## 어떻게 AMPHTML 광고가 작동합니까?

{{ image('/static/img/docs/ads/amphtml-ads-how.svg', 1019, 434, alt='Serving AMPHTML ads to AMP pages', caption='AMPHTML 광고를 AMP pages로 제공', align='' ) }}

1.  게시자는 [`<amp-ad>`](/docs/reference/components/amp-ad.html) 태그를 통해서 사용할 광고 네트워크를 지정하고 AMP 페이지에 광고 슬롯을 삽입합니다.
1.  AMP 런타임은 지정된 광고 네트워크로 광고를 받기 위해서 광고 요청을 보냅니다. AMPHTML 광고를 처리할 수 있는 광고 네트워크는 그 창의성을 검증하고 서명하는 [빠른 가져오기 구현](https://github.com/ampproject/amphtml/blob/master/ads/google/a4a/docs/Network-Impl-Guide.md) 을 제공합니다.
1.  해당 광고 네트워크는 AMPHTML 광고로 응답하고 AMP 런타임은 AMP 페이지에 광고를 렌더링합니다.

## AMPHTML 광고 제공하기

### 게시자

AMPHTML에서 당신의 직접 광고 형식를 제공하기 위해서, 당신은 반드시 광고를 [AMPHTML 광고 사양](/docs/ads/a4a_spec.html)에 따라 만들어서 AMPHTML 광고 서비스를 제공하는 광고 서버를 이용해 전달해야 합니다. 현재, 다음과 같은 광고 서버들이 AMPHTML 광고를 지원합니다:

*   DoubleClick for Publishers
*   TripleLift
*   Dianomi
*   Adzerk
*   Google AdSense

당신의 간접적인 채널을 통해 AMPHTML 광고(e.g., exchange, SSP, etc.)를 전달하기 위해서, [다음 목록](/docs/ads/ads_vendors.html)에서 지원하는 네트워크/광고 서버를 사용해야 합니다.

### 광고 대행사

만약 당신이 광고 대행사라면, 당신은 [AMPHTML 광고 규약](/docs/ads/a4a_spec.html)에 부합하도록 광고를 만들어야만 합니다. 영감과 예시용으로, [AMP by Example](https://ampbyexample.com/amp-ads/#amp-ads/advanced_ads)의 오픈소스 AMPHTML 광고 탬플릿을 참고하십시오. 혹은, 다음 도구 중 하나를 사용하여 AMPHTML 광고를 만드십시오.

*  [Celtra's Ad Creator](http://www.prnewswire.com/news-releases/celtra-partners-with-the-amp-project-showcases-amp-ad-creation-at-google-io-event-300459514.html)
*  [Google Web Designer](https://support.google.com/webdesigner/answer/7529856)
*  Adobe Animate (*coming soon*)

### 광고 네트워크/서버

AMPHTML 광고를 AMP 페이지로 제공하기 위해서, 당신은 [빠른 가져오기 광고 요청 구현](https://github.com/ampproject/amphtml/blob/master/ads/google/a4a/docs/Network-Impl-Guide.md)을 사용하는 네트워크(그런 네트워크를 가지고 있지 않다면)에 대한 `amp-ad` 확장을 만들어야 합니다. 자세한 내용은 [AMP와 통합하여 디스플레이 광고 제공](/docs/ads/adnetwork_integration.html)를 참고하십시오. AMPHTML을 AMP가 아닌 페이지에 제공하기 위해서 특별한 통합이 필요하지 않다는 점을 기억하십시오.

## AMPHTML 광고 만들기

**처음부터**: AMPHTML 광고는 [AMPHTML 광고 규약](/docs/ads/a4a_spec.html)을 따라야만 합니다. 데모와 예시로, [AMP 예시](https://ampbyexample.com/amp-ads/#amp-ads)의 오픈소스 AMPHTML 광고 탬플릿을 참고하십시오.

**도구 사용**: AMPHTML 광고를 설계하기 위해서 다음의 모든 도구들을 사용할 수 있습니다:

*  [Celtra's Ad Creator](http://www.prnewswire.com/news-releases/celtra-partners-with-the-amp-project-showcases-amp-ad-creation-at-google-io-event-300459514.html)
*  [Google Web Designer](https://support.google.com/webdesigner/answer/7529856)
*  Adobe Animate (*coming soon*)


### AMPHTML 광고 문법 검사기

AMPHTML 광고를 만든 후, 그 광고가 올바른 AMPHTML 문법을 사용했는지 확실히 해야만 합니다. 개발 환경에 따라, 당신의 AMPHTML 광고 검사를 위한 몇 가지의 선택이 있습니다.:

*   당신의 빌드 CI에 통합 검사를 위해 [AMP validator NPM](https://www.npmjs.com/package/amphtml-validator) 모듈을 사용하세요.
*   원-오프 테스팅을 위해 [AMP validator](https://validator.ampproject.org/) 를 사용하세요.
*   [Cloudflare](https://blog.cloudflare.com/amp-validator-api/)와 파트너가 되어 그들의 공공 검사기 엔드포인트를 사용하세요.

{% call callout('Note', type='note') %}
AMP 페이지에 AMPHTML 광고를 빠르게 렌더링하기 위해서 (i.e., using preferential rendering in 빠른 가져오기), 문법이 알맞아야만 합니다. 만약 문법이 유효하지 않다면, 광고는 그렇게 빠르게 렌더링 되지 않을 것입니다.
{% endcall %}

## RTB에서의 AMPHTML 광고 지원

실시간 입찰 (Real-Time Bidding, RTB) 환경에서 AMPHTML 광고를 지원하기를 원하는 SSPs 와 애드 익스체인지를 위한 자세한 내용은 [RTB 애드 익스체인지를 위한 구축 가이드](https://github.com/ampproject/amphtml/blob/master/ads/google/a4a/docs/RTBExchangeGuide.md)를 참고하십시오.

## 자주 묻는 질문

#### AMPHTML 광고 샘플이 많이 있나요?

네. 많은 멋진 AMPHTML 광고 탬플릿들을 [AMP By Example](https://ampbyexample.com/amp-ads/#amp-ads/experimental_ads)에서 찾을 수 있습니다. 이 샘플들은 AMP의 향상된 구성요소들을 사용합니다.

#### AMPHTML 광고가 써드 파티  검증 및 시각화 탐지를 지원하나요?

네, [`amp-analytics`](/docs/reference/components/amp-analytics.html) (e.g., Google의 ActiveView가 이렇게 통합합니다.)를 사용해서 검증과 시각화 탐지를 위한 네이티브한 지원을 하고 있습니다. there is native support for verification and viewability detection using . There are also other vendors like MOAT that are actively implementing support for it.

#### AMPHTML 광고가 타임라인 기반의 애니메이션을 지원하나요?

네. [`amp-animation`](/docs/reference/components/amp-animation.html)를 참고하세요.

#### 대부분의 광고가 가볍게 두드릴 수 있는 타켓과 광고 나가기를 가집니다. AMPHTML 광고도 비슷한 메커니즘을 가지고 있나요?

네. [`amp-ad-exit`](/docs/reference/components/amp-ad-exit.html)를 참고하세요.

#### 필요한 것을 찾지 못했습니다. 어디로 질문하면 되나요?

*   [Stack Overflow](http://stackoverflow.com/questions/tagged/amp-html) 는 AMP에 대한 질문의 답을 찾기 위해 추천하는 방법입니다. AMP 프로젝트 커뮤니티의 멤버들이 주기적으로 Stack Overflow를 모니터링하고 있기 때문에 아마도 그곳에서 당신은 가장 빠른 응답을 받을 수 있을 것입니다.
*   [Slack #a4a-discuss](https://docs.google.com/forms/d/e/1FAIpQLSd83J2IZA6cdR6jPwABGsJE8YL4pkypAbKMGgUZZriU7Qu6Tg/viewform?fbzx=4406980310789882877) 채널에 해결책과 질문을 위해 가입하세요.
*   만약 당신이 AMP에서 버그를 발견하거나 AMP에 요청이 있다면 문제 해결에 대한 정보를 얻기 위해서 [AMP에 이슈를 보고하기](https://github.com/ampproject/amphtml/blob/master/CONTRIBUTING.md#reporting-issues-with-amp)를 이용하십시오.
