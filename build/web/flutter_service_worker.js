'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "164a707f7e939fe572b111fe7a9da7b9",
"assets/AssetManifest.bin.json": "0425641a90a2b710894c4797cf68e586",
"assets/AssetManifest.json": "f72010292d0ee781e947da3ad0e0b89d",
"assets/assets/book.png": "fefb25312bac8f08e116baebc1248766",
"assets/assets/emoji/Airplane.png": "1483f1f11b0100978d3188ca43a1f82b",
"assets/assets/emoji/Book.png": "37f0d3a87be8cf4dbbd5faa3fc024269",
"assets/assets/emoji/Brain.png": "1df42512fa24d0f4036d7da4d5854526",
"assets/assets/emoji/Gym.png": "5a150ea0e29632878858ca969c4ce743",
"assets/assets/emoji/Magnifier.png": "0121dbce702fcfbf52c2bc97d8e6babd",
"assets/assets/emoji/Moon.png": "c0b629faae5bdead6af320a76cbe5763",
"assets/assets/i.png": "601d3b98cc215a7de02f1be949c08d38",
"assets/assets/pfp2.png": "21dd919b44595bdbd3e771ca7eb0e8d4",
"assets/assets/ss/appleMusic.jpg": "3bfb535561d59f426bcc4d0d8ca9b84e",
"assets/assets/ss/calc.jpg": "a5a99b612e58d79fa07bf9f498cc1586",
"assets/assets/ss/findx.jpg": "10596dbdfd897bb4e9b19e6c72ae7fce",
"assets/assets/ss/portWeb.jpg": "b1d0c1d916aed055dcd46117da4d3aca",
"assets/assets/ss/qrcode.jpg": "27605b7b4d2bdb35f7d700b60c44704c",
"assets/assets/ss/spamurai.jpg": "1e3328e1e2e4fe82baf30fab903ce20a",
"assets/assets/ss/stopWatch.jpg": "d406b4c29098b040d43684bac289277e",
"assets/assets/ss/ticTac.jpg": "541131c236f6721adebf387335a44131",
"assets/assets/ss/toDo.jpg": "d8527ddfa7fb97df091be377aa6eb95c",
"assets/assets/ss/weather.jpg": "a576d932733fc3068ee5c8fa11e63bc0",
"assets/assets/svg/404.svg": "a1c36d16b80c7ecbb9b36868e664644a",
"assets/assets/svg/blender.svg": "470fd49421cf4b7c5541f4ba1cd5344f",
"assets/assets/svg/cpp.svg": "6f2a76ffb3b72fcb544ed350170ffeae",
"assets/assets/svg/css.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/svg/dart.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/svg/email.svg": "99c14f8ef3bf527047167e56e5021217",
"assets/assets/svg/figma.svg": "c7ef676648d0a63907b26420105ed20d",
"assets/assets/svg/flutter.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/svg/framer.svg": "5d0f449e36a5402b819312beea001086",
"assets/assets/svg/github.svg": "4b8a4845e3c03b05cc92e2b3199889d5",
"assets/assets/svg/google.svg": "8cddc97baf8329135ae55c6672fc5d63",
"assets/assets/svg/hackerrank.svg": "897e7d95bbae99c041169ab396c33dd5",
"assets/assets/svg/html.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/svg/instagram.svg": "ce8428b7152ba3437ac5352f79918721",
"assets/assets/svg/java.svg": "459bbae2e96a2410c5b429eb941a4c11",
"assets/assets/svg/javascript.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/svg/linkedin.svg": "15b4281ebd93cc246c81200bc3c1fd94",
"assets/assets/svg/mongodb.svg": "9e4958f10afdff3ce934db2815e0e33e",
"assets/assets/svg/mysql.svg": "9a87849cee36242dc6ab7399078e0869",
"assets/assets/svg/nodejs.svg": "b045a4be512feae9ef764cc7e5dd2bfe",
"assets/assets/svg/python.svg": "19816abc24d61b6c0cf28814ba9394ab",
"assets/assets/svg/x.svg": "602958e0674315e1cd989b3ac5f74567",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "f2a86f8de1c08112c8df34bc18cf397a",
"assets/NOTICES": "e3b125c447b73322fcf2b0f6e57d5507",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "e9a942e97f590b86ad272037c0aed5d9",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "58aafa334bd725171924e51e2d142707",
"icons/Icon-192.png": "b7dc3b5320ecd9f61049d2a5cff1b360",
"icons/Icon-512.png": "983e7bb4010cd46225086d2a07ae7f1a",
"icons/Icon-maskable-192.png": "b7dc3b5320ecd9f61049d2a5cff1b360",
"icons/Icon-maskable-512.png": "983e7bb4010cd46225086d2a07ae7f1a",
"index.html": "602d2a6099e34832c96ffc042d9b2d6a",
"/": "602d2a6099e34832c96ffc042d9b2d6a",
"main.dart.js": "17b45a55b4cc4a3cb747e7cd7f98cacf",
"manifest.json": "09e0923360d1c841b5f3d8cb2e834877",
"version.json": "d79f6faf9e219fb8eabdabb0a5ffbc33"};
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
