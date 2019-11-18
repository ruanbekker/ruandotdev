+++
categories = ["tshirts"]
date = "2019-11-10T16:30:00"
description = "buy tshirt designs from bekker clothing"
slug = "bekker-clothing-t-shirt-designs"
tags = ["apparel", "clothes", "tshirts"]
title = "Bekker Clothing T-Shirt Designs"
+++

[![Slack Status](https://linux-hackers-slack.herokuapp.com/badge.svg)](https://linux-hackers-slack.herokuapp.com/) [![Chat on Slack](https://img.shields.io/badge/chat-on_slack-orange.svg)](https://linux-hackers.slack.com/) [![Drone.io Build Status](https://cloud.drone.io/api/badges/ruanbekker/ruandotdev/status.svg)](https://cloud.drone.io/ruanbekker/ruandotdev) [![GitHub followers](https://img.shields.io/github/followers/ruanbekker.svg?label=Follow&style=social)](https://github.com/ruanbekker) [![Twitter Follow](https://img.shields.io/twitter/follow/ruanbekker.svg?style=social)](https://twitter.com/ruanbekker)

## Bekker Clothing

So I started my own clothing brand, Bekker Clothing. See some of my designs:

<div id='collection-component-1574113687304'></div>
<script type="text/javascript">
/*<![CDATA[*/
(function () {
  var scriptURL = 'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js';
  if (window.ShopifyBuy) {
    if (window.ShopifyBuy.UI) {
      ShopifyBuyInit();
    } else {
      loadScript();
    }
  } else {
    loadScript();
  }
  function loadScript() {
    var script = document.createElement('script');
    script.async = true;
    script.src = scriptURL;
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
    script.onload = ShopifyBuyInit;
  }
  function ShopifyBuyInit() {
    var client = ShopifyBuy.buildClient({
      domain: 'bekkerclothing.myshopify.com',
      storefrontAccessToken: '68eb29a6d90539cb0321ea90bb043fae',
    });
    ShopifyBuy.UI.onReady(client).then(function (ui) {
      ui.createComponent('collection', {
        id: '155168931924',
        node: document.getElementById('collection-component-1574113687304'),
        moneyFormat: '%24%7B%7Bamount%7D%7D',
        options: {
  "product": {
    "styles": {
      "product": {
        "@media (min-width: 601px)": {
          "max-width": "calc(25% - 20px)",
          "margin-left": "20px",
          "margin-bottom": "50px",
          "width": "calc(25% - 20px)"
        },
        "img": {
          "height": "calc(100% - 15px)",
          "position": "absolute",
          "left": "0",
          "right": "0",
          "top": "0"
        },
        "imgWrapper": {
          "padding-top": "calc(75% + 15px)",
          "position": "relative",
          "height": "0"
        }
      }
    },
    "text": {
      "button": "Add to cart"
    }
  },
  "productSet": {
    "styles": {
      "products": {
        "@media (min-width: 601px)": {
          "margin-left": "-20px"
        }
      }
    }
  },
  "modalProduct": {
    "contents": {
      "img": false,
      "imgWithCarousel": true,
      "button": false,
      "buttonWithQuantity": true
    },
    "styles": {
      "product": {
        "@media (min-width: 601px)": {
          "max-width": "100%",
          "margin-left": "0px",
          "margin-bottom": "0px"
        }
      }
    },
    "text": {
      "button": "Add to cart"
    }
  },
  "cart": {
    "text": {
      "total": "Subtotal",
      "button": "Checkout"
    }
  }
},
      });
    });
  }
})();
/*]]>*/
</script>


## Thanks

Thanks for reading!

