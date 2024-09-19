import 'dart:convert';

class GlobalConfig {
  static var homePageConfig = jsonEncode({
    "widgets": [
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/exchange-offer-banner-modern-style_1017-33504.jpg?alt=media&token=8bd9c0de-137a-450e-ac0d-7b5ac90b20a5",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/s2.png?alt=media&token=dad14993-1a5e-410d-8c79-28d0a57c0900",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },

        ]
      },
      {
        "widgetKey": "widget_key2",
        "widgetName": "grid_1",
        "widgetProperties": [
          {
            "title": "Scan & Pay",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/scan.jpeg?alt=media&token=4a235ffb-21e8-41b0-a2b4-cec9df980374",
            "ctaType": "deeplink",
            "ctaPath": "neu/scan"
          },
          {
            "title": "Request",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/scan.jpeg?alt=media&token=4a235ffb-21e8-41b0-a2b4-cec9df980374",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          },
          {
            "title": "Pay Bills",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/paybills.jpeg?alt=media&token=a215801d-28b8-4bbc-8f9b-9824c5ff731b",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          },
          {
            "title": "DTH Services",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/dth-recharge-services.jpg?alt=media&token=e6670695-5935-4c18-8f93-7ac06ac0d6cd",
            "ctaType": "deeplink",
            "ctaPath": "neu/request"
          }
        ]
      },
      {
        "widgetKey": "widget_key3",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/scan.jpeg?alt=media&token=4a235ffb-21e8-41b0-a2b4-cec9df980374",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },

      {
        "widgetKey": "widget_key5",
        "widgetName": "grid_2",
        "widgetProperties": [
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/grocery.jpeg?alt=media&token=dd841d9e-85e3-4db7-abb6-6b25b98436d5",
            "bgUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/grocery.jpeg?alt=media&token=dd841d9e-85e3-4db7-abb6-6b25b98436d5",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/mob.jpeg?alt=media&token=b7d94afc-7c9c-49bb-8b9f-f2e0c8c227f3",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/electronics.jpeg?alt=media&token=c604cc90-84cf-4bf1-8f92-41ecba8ad60c",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/tv.jpeg?alt=media&token=fd30ecab-a68a-4caf-8616-2a86ebf7d74b",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/med.jpeg?alt=media&token=575eb96e-8cf4-4487-b06d-95e3ede167aa",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key6",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Deal Of the day",
            "subtitle": null,
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/deal.png?alt=media&token=55e653e5-17c8-4dab-8aaf-33951db36105",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key7",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "Scan & Pay",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/deal.png?alt=media&token=55e653e5-17c8-4dab-8aaf-33951db36105",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
     /* {
        "widgetKey": "widget_key123",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Explore WestSide",
            "subtitle": "Free Delivery",
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal_without_ind",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/s1.png?alt=media&token=4bd2ab9c-3146-4a6c-ad3c-dc7a7518959b",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/pdh56Fm/Screenshot-2022-08-02-at-8-29-10-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://i.ibb.co/pdh56Fm/Screenshot-2022-08-02-at-8-29-10-PM.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key10",
        "widgetName": "grid_3",
        "widgetProperties": [
          {
            "title": "Womens Footwear",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Entertainment Store",
            "subtitle": "+5 % cashback",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "grid_4",
        "widgetProperties": [
          {
            "title": "Womens Footwear | Womens Footwear",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Grocery",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Mobiles",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Electronics",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "TV",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Medicine",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Top Offers on Groceries",
            "subtitle": "+5 % cashback",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "grid_5",
        "widgetProperties": [
          {
            "title": "Min 20 % off",
            "subtitle": "Fruits and vegies",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Grocery",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Mobiles",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Electronics",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key676",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Amazing offers on Hotel",
            "subtitle": "+5 % neu coins",
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key3",
        "widgetName": "banner_1",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key1297",
        "widgetName": "horizontal_scroll_1",
        "widgetProperties": [
          {
            "title": "Relaxing Stays like Home",
            "subtitle": "Fruits and vegies",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://tatadigital-dev.adobecqms.net/content/dam/tcp-pwa/icons/Flight-2.png",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Grocery",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/71SlwH5mnTL._SY879_.jpg?alt=media&token=c9a5a589-d9d6-40d0-a7b0-185078fbef3a",
            "bgUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/mega-sale-offers-banner-template_1017-31299.avif?alt=media&token=c00c5df0-ce0a-4ab9-82f7-4c5d9ba5d076",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Mobiles",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/shirt1.jpeg?alt=media&token=0f15ad84-148a-49ca-a038-02ca4accacfd",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "Electronics",
            "subtitle": "Foodgrains | oils",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/shirt1.jpeg?alt=media&token=0f15ad84-148a-49ca-a038-02ca4accacfd",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key3237",
        "widgetName": "footer",
        "widgetProperties": [
          {
            "title": "banner",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/shoe2.jpg?alt=media&token=16b3dab6-2e66-428f-b26a-601d7a971416",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      }*/


    ]
  });
  static var testHomePageConfig = jsonEncode({
    "widgets": [
      {
        "widgetKey": "widget_key1",
        "widgetName": "carousal",
        "widgetProperties": [
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/show3.webp?alt=media&token=abf4eb4d-85f8-4007-855b-164c43bb548c",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/s3.png?alt=media&token=4b788530-97be-43fd-9790-bbd817947c7e",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/mega-sale-offers-banner-template_1017-31299.avif?alt=media&token=c00c5df0-ce0a-4ab9-82f7-4c5d9ba5d076",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/exchange-offer-banner-modern-style_1017-33504.jpg?alt=media&token=8bd9c0de-137a-450e-ac0d-7b5ac90b20a5",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          },
          {
            "title": "wow",
            "subtitle": "",
            "imageUrl": "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/gradient-sales-background-with-discount_52683-63113.jpg?alt=media&token=50a219ec-debc-4773-b29e-6689a235f52f",
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      },
      {
        "widgetKey": "widget_key6",
        "widgetName": "headline",
        "widgetProperties": [
          {
            "title": "Deal Of the day",
            "subtitle": null,
            "imageUrl": null,
            "ctaType": "webview",
            "ctaPath": "https://www.amazon.in/"
          }
        ]
      }
    ]
  });
}
