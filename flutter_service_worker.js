'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "6f2c6c2a5958149c8b995acc5939f981",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "d7d21eaecddb423f49ce9e3b9835aaa4",
"/": "d7d21eaecddb423f49ce9e3b9835aaa4",
"main.dart.js": "1287b7f954a45448a152c30da7dc239d",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "6d7a059c845d9bf5a7951fc0d89570a4",
"assets/AssetManifest.json": "55448eb1452529de23e71bca02ac49f9",
"assets/NOTICES": "284cf4ff4bd1ba48077234d471b900bc",
"assets/FontManifest.json": "011f3371e5fbb4fb422a851d352ffdee",
"assets/AssetManifest.bin.json": "1b1156be5afaa55772187a34d5881f32",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "2d5a3c93206cdfa2f289ffbb1f625704",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/images/medium.svg": "7bc0acc9f4505b4f4d0ca98d2567a261",
"assets/assets/images/figma.svg": "626a55f5ba4899a5d6eadbb9702cdbe5",
"assets/assets/images/javascript.svg": "11f0c47b298b97f9fbe094824f9f2d25",
"assets/assets/images/android.svg": "572a3116b2fd2fd43d293f2d483caa4f",
"assets/assets/images/java.svg": "0c2a57a2f23f50f5e25e0d2c6f3a4532",
"assets/assets/images/github.svg": "446a40a0fab21062e4b73e59b6332d26",
"assets/assets/images/review.svg": "1050c4ecd6bbc422e29759c3fb0aa47c",
"assets/assets/images/connectivity.svg": "a18238ee4c5633fa233a0a7aadc2109f",
"assets/assets/images/documentation.svg": "73226d5501cbd6dd2042f12055c0242e",
"assets/assets/images/apis.svg": "01f1a96659ea70f7ed476bc55a106688",
"assets/assets/images/flutter.svg": "c9bf62b91478c27be001bde2787dc8dd",
"assets/assets/images/git.svg": "eb33b764035e18a2f402bb778b5f3ea9",
"assets/assets/images/vignaraj_resume_2024.pdf": "447191ea9a1edd280551c834c9bbc846",
"assets/assets/images/websocket.svg": "e7869f69c5db55f4e57e24b27fc4b252",
"assets/assets/images/jira.svg": "9fae953c30795d141997817c15957427",
"assets/assets/images/architecture.svg": "8a956737baf9338aac8a68c8a7db1ab9",
"assets/assets/images/lint.svg": "68571557417b103eff7b884979d279c0",
"assets/assets/images/kotlin.svg": "205638a27929044d75c33d4a5c43eb6f",
"assets/assets/images/dart.svg": "19a9539710aa8af85e8b0c0e337ba6b6",
"assets/assets/images/github_skill.svg": "4600c71ed933f59207facf5adad1f03c",
"assets/assets/images/ai.svg": "4b6b1adc94b687fe27b852456ca9b8e8",
"assets/assets/images/photoshop.svg": "c57d1468f8f2d0327e178c30dfb13e47",
"assets/assets/images/automation.svg": "4b2e2948251248aa4babd73ead6f468e",
"assets/assets/images/ml.svg": "4d5a0a24f8d9e78878d5778dd354c46c",
"assets/assets/images/postman.svg": "8fe086326ced30fe159d18b7f7358660",
"assets/assets/images/linkedin.svg": "b10794f1d2cfb39d57b3216e801dd9a7",
"assets/assets/images/pos.svg": "42b23bfba7023013c47ffc88d9f6bd2f",
"assets/assets/images/manual.svg": "a7c50ed9604f9e7d5fd3a28e78de4a2f",
"assets/assets/images/code_magic.svg": "8bb482905616ee89e3efc35ae3e49c22",
"assets/assets/images/profile_pic.jpeg": "9a4f620d9c57d9c739784ac73fe3a862",
"assets/assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/assets/fonts/NotoSans-Regular.ttf": "c8e58befd2433eb89589dd1d23225c4e",
"assets/assets/assets/fonts/NotoSerif-Regular.ttf": "811988e53e8c4aba75a5d2ce60bb362b",
"assets/assets/assets/fonts/NotoSans-Bold.ttf": "ef4b39fb4d49db8beed2966debc0f477",
"assets/assets/assets/fonts/NotoSerif-Bold.ttf": "eb8a8ba64d03bf76bc188d2e22ff9211",
"assets/assets/assets/fonts/SourceCodePro-variable.ttf": "2eabf19db936c3a7603eaa08dce63e6b",
"assets/assets/assets/fonts/SourceCodePro-italic.ttf": "59b5238c0c1acf946ebea93fc3862987",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
