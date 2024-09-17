'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4c8390d8999a0af64d3b30c2e7a7b192",
"assets/AssetManifest.bin.json": "abd32fc90ada03f95e04d80122cc9cda",
"assets/AssetManifest.json": "cb3eba7fd0c36107d65e70ddfa0871cb",
"assets/assets/cv/my_cv.pdf": "999d565fe21e73f29e144f07d4d278bf",
"assets/assets/fonts/Familjen_Grotesk/FamiljenGrotesk-Regular.ttf": "4d333fb00c4938aaf6ef1e5e32942cb6",
"assets/assets/images/background.json": "937d35ebf60448df11aa935956af72be",
"assets/assets/images/background1.png": "f4c2221d0f0cc34b16f2e57c3dc84a86",
"assets/assets/images/dart.png": "1a092a515af72fea533f3733ce67de3b",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/exclusiveDiary.png": "5daa22c0aa832cb8bdfdf9d23a0e9057",
"assets/assets/images/firebase.png": "02e3733f6a175bc7f2715fd8b26e5df6",
"assets/assets/images/firestore.png": "d4e6eec890c287a57754c7d43fb4c8fc",
"assets/assets/images/flutter.png": "023350440992ed7824e773882888f366",
"assets/assets/images/flutterflow.png": "2dbff8f11a55e251f26339d2f69e8eab",
"assets/assets/images/git.png": "fefb43d2f2583b01c576b8104545caff",
"assets/assets/images/github2.png": "aade7d7f7df6d326ce3539aed8626159",
"assets/assets/images/hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/Minime.json": "8f07b12c367d1d889a9577baefca38ef",
"assets/assets/images/myLogo.png": "bbd6e86ae274f2b3a928172637991f37",
"assets/assets/images/pfp.png": "cc30b18e5352bdf4e30cb9392736107b",
"assets/assets/images/profile.png": "df1405a64a4abe15046f796bd647b914",
"assets/assets/images/ruinedKingdom.png": "a40443adac7c5e714f06c7a85a2b5563",
"assets/assets/images/soSaladas.png": "7ff2c57fa3f228104b6fc849a21e2a99",
"assets/assets/images/tapping.gif": "0f5567c0c3a5a0b2be390880a55cb0c5",
"assets/assets/images/transparent.png": "ebdeac6cb5c5e658f02a51d475177ee4",
"assets/assets/images/vakinhaBurger.png": "407500ef0bb02b204670b100bf758d76",
"assets/assets/project_images/ed_image_1.png": "68f4614e810302d51bcf7f1e0bef97df",
"assets/assets/project_images/ed_image_2.png": "9b26802b7588699bc0709d9492459269",
"assets/assets/project_images/rk_image_1.png": "3f7a33fc2554e9222e9f49c166389ce0",
"assets/assets/project_images/rk_image_2.png": "b0dfa95b47b5e2fcdacd1ded796cd1bd",
"assets/assets/project_images/ss_image_1.png": "134f85188e82d5306adb9aff35f0f8b6",
"assets/assets/project_images/ss_image_2.png": "5fc6af851634d8dfb45ba65f83ca5884",
"assets/assets/project_images/ss_image_3.png": "6e8083639c45aef05e9603b30ba36b38",
"assets/assets/project_images/ss_image_4.png": "73958f98c884968047e812a97ac60582",
"assets/FontManifest.json": "95f1b72d4580a4df2a4a860876fb181f",
"assets/fonts/MaterialIcons-Regular.otf": "caf5b39c59fb4f2bffe34e354aaacd29",
"assets/NOTICES": "294fd69db1cbfd7ae6a45d9df2eeffbf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "e8c437bbfc4def98e99ad664f72f20e0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "0ef0d0d627bd338a8866309fec7c9567",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"flutter_bootstrap.js": "17909ec4034ad943a8f7b12ad89e2dbc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72199b90a73c307c271ec0c6b2377894",
"/": "72199b90a73c307c271ec0c6b2377894",
"main.dart.js": "f8b0e7dd851701c0a610419f9a644af3",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
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
