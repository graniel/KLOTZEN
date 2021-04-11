'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "aaef0b022fb9644cff8d98a29daf35ec",
"assets/assets/animations/bird.json": "2a0bce0d6a798d073c8a3650eb422b67",
"assets/assets/gifs/drink/drink1.gif": "f260edf1ad2758120607100d434a128d",
"assets/assets/gifs/drink/drink2.gif": "8a0e47d8e8d7e1dbc3acdf89c6f889f8",
"assets/assets/gifs/drink/drink3.gif": "8c60a1e2fe48960be8920fe3b61d02df",
"assets/assets/gifs/drink/drink4.gif": "a55a20e1368848c99394f4d493780450",
"assets/assets/gifs/drink/drink5.gif": "a804fa0e0b18e0eede3c4a233726aca0",
"assets/assets/gifs/lsd.gif": "bbe6b4ab24b6f95575b74887dacd862b",
"assets/assets/images/(1).jpg": "689676e084d47eb3644a7d3319138197",
"assets/assets/images/(10).jpg": "805e79e77e0ad28b7fc3c392d3d70eda",
"assets/assets/images/(11).jpg": "c12b66fc86b53ae78a4ce4ac911e612b",
"assets/assets/images/(12).jpg": "65209edc213958e1372da64200fe4679",
"assets/assets/images/(13).jpg": "eab950db34e6a5d7e864c03fbe062e3b",
"assets/assets/images/(14).jpg": "35b0fe613e452573d810dc5c6e2b1d00",
"assets/assets/images/(15).jpg": "5632611de1f25dbc0c3919022cd5417e",
"assets/assets/images/(16).jpg": "ad4edda62d90147b98750cb82c0975c8",
"assets/assets/images/(17).jpg": "e0e24fc789fed05dbecfacd3a6c59eb7",
"assets/assets/images/(18).jpg": "be3b6eb279f99a33d4480581feabc748",
"assets/assets/images/(19).jpg": "d7ae79b4517dd2e2fbbb6cd2eb5fd503",
"assets/assets/images/(2).jpg": "edf2cc2cf30a15fb8faad8e7f46f2c45",
"assets/assets/images/(20).jpg": "4b8525219ff07bffb90034b24146e8c2",
"assets/assets/images/(21).jpg": "730d926b06a9995612c81a72d44da36e",
"assets/assets/images/(22).jpg": "51da96c98b74c71780e1190b897967a3",
"assets/assets/images/(3).jpg": "f4f6e42ec2b7d5bd043b3cc0f01e2c2f",
"assets/assets/images/(4).jpg": "2dfe499df728ba995d3268e57ea59071",
"assets/assets/images/(5).jpg": "1cf9fb5867e89bd4c10c499dfbc17177",
"assets/assets/images/(6).jpg": "ca02080f35a1c384bb17ffe24484cd59",
"assets/assets/images/(7).jpg": "0e76b91074363e70c918c555c76dc006",
"assets/assets/images/(8).jpg": "463f9e2d1bf414417141788127309b4b",
"assets/assets/images/(9).jpg": "11b6b60684f57379150a0053227c2240",
"assets/assets/images/b%25C3%25A4r.jpg": "4155d6d81613df220054de0ac08e58c8",
"assets/assets/images/backpfeife.jpg": "56be65ee66a0f842bbd3be72608d170f",
"assets/assets/images/balett.jpg": "cc322ac823511f82bc8567899b030e37",
"assets/assets/images/ballon.jpg": "848af30a77ce35e8f8fd063b1d18086b",
"assets/assets/images/bild.png": "415a1aa373d9977908905c7377e74d04",
"assets/assets/images/blasen.gif": "8905cf9c846325a55b6985eb26cc04b1",
"assets/assets/images/blind.jpg": "b73a83111416c3fd81df2db431ff3b4c",
"assets/assets/images/bremsen.jpg": "b2d344b66486d665b2d7f8fce3435bc3",
"assets/assets/images/brille.jpg": "bd59843b2c85cd59531d5f88a6bcdfce",
"assets/assets/images/cards.png": "ad5da9d3ec329b584b31d9c343d4e213",
"assets/assets/images/colors.jpg": "722ed7edcf1da57d3713a2e3c28e28fd",
"assets/assets/images/denken.jpg": "0ad1385ed8723f31c53e0f2493f95116",
"assets/assets/images/discussion.png": "6c5c90d7963b354506e476cbd92ab3ee",
"assets/assets/images/dreck.jpg": "cce9973c11138b2eba3ca26357f9ab60",
"assets/assets/images/drugaddict.jpg": "90c03df0d0594dcaa03f75998b6204aa",
"assets/assets/images/ei.jpg": "a05b73507bad7ee45c70bd3754c6e7ea",
"assets/assets/images/eichh%25C3%25B6rnchen.webp": "157cfc01ca33acc008ffc412a1e4a019",
"assets/assets/images/empty.jpeg": "0a6fcada4e9f316343ae8e6c773e46a6",
"assets/assets/images/england.jpg": "611f919262aa83652777e04e6b44be75",
"assets/assets/images/esel.jpg": "ff2aeed4d583ff7205a4b717b8fe0c45",
"assets/assets/images/fahrrad.jpg": "6683254a8ec0d2754a2def0ef5f58836",
"assets/assets/images/fett.jpg": "3d352fb3da75a38753fc61087d182343",
"assets/assets/images/food.jpg": "8f20dd27781ee7c6c77dc8cc4add5598",
"assets/assets/images/fr%25C3%25BCchte.jpg": "d78ff1d4ec8bca9928517ff52f717565",
"assets/assets/images/fuchs.jpg": "4c1cfd44203058fdce39a402b70f2a3a",
"assets/assets/images/haare.jpg": "f5bf0d5bc67c075a97b92a96653d2a7f",
"assets/assets/images/handball.jpg": "875bb3ec0061d61a2691f61da213a0b0",
"assets/assets/images/handy.jpg": "888f168141270e442245e1326c27555f",
"assets/assets/images/hdr.png": "e08dc7b5361fe7193c7613b9ac7b6733",
"assets/assets/images/homer.gif": "8b9d64dd7a997f9c55116b167429a478",
"assets/assets/images/huhn.jpg": "4cff35077f87d3a6a8ce0123825e99c1",
"assets/assets/images/jenga.png": "70148c06b7002a680ade4e63fc5f5f22",
"assets/assets/images/klatschen.jpeg": "f50f21d215bc179fbc481098b326d203",
"assets/assets/images/kotzen.png": "4dfe05a672630c3e2b51dc7036ec182d",
"assets/assets/images/kuss.png": "4d08739211fe1c1516a050d404a3d0a0",
"assets/assets/images/kussarsch.jpg": "e71e38d6ed16ce6e263e66f714a71719",
"assets/assets/images/kussnein.jpg": "3dfde6f6b4dfb10e49931c51a45e957b",
"assets/assets/images/lasertag.jpg": "50397950d15e6135be100db244d7f3f3",
"assets/assets/images/liege.jpeg": "3be072bd2ae0a973c0c762526918a8e2",
"assets/assets/images/london.jpg": "19c5af5065c165b556bbb5e59f4f9bc2",
"assets/assets/images/m%25C3%25A4nnchen.gif": "874b3d5918621aa12d64c9679af4e2b1",
"assets/assets/images/maus.jpg": "572651d2984d314d9daa5e7e5079cd42",
"assets/assets/images/mountains.png": "9bd1fc5dad06b10b476a09fcad437f0b",
"assets/assets/images/music.jpg": "3024d19c6837f4ff87b5d0c1e1ae8e5d",
"assets/assets/images/nutella.png": "42f99cc157270f2d2e5ca70333baf178",
"assets/assets/images/peach.png": "c3acd234c12dcf0aded6cce37ec97e13",
"assets/assets/images/poli.jpg": "6f9db038dc05f84e27ce3fcbaee31aca",
"assets/assets/images/porn.jpg": "e6712463d82592c43af6420b4fb61aa3",
"assets/assets/images/radler.jpg": "7872f3086526231306b595942b4d570e",
"assets/assets/images/schlaege.jpg": "8418058ebdbef472a07af8a83164ebc6",
"assets/assets/images/schlange.jpg": "4efaf8df3dd3e443f7ebddbaccb15127",
"assets/assets/images/schrei.jpg": "0ef684c0e319e2b75d48fd2f9e3d7447",
"assets/assets/images/singen.jpg": "48c49976aa8c399950ce5edd994b96b3",
"assets/assets/images/snap.png": "758f76c4d1624712500fbcf10124fab4",
"assets/assets/images/socken.jpg": "bdca95047a74a4dd92d0e1c5e04a778f",
"assets/assets/images/sofa.jpg": "f24f48f1f4b8b1ff827746f8cc66edc4",
"assets/assets/images/sound.gif": "54ea453727236e8a752c590297625e59",
"assets/assets/images/spotify.png": "06e43cea5d48e294d2d6147486216628",
"assets/assets/images/stadt_fluss.jpg": "e57c9414f6ecab87d7abda96c6ce9d35",
"assets/assets/images/starren.jpg": "636169de906a02647dad0aa91503337b",
"assets/assets/images/stein.jpg": "bb2e710f4600d7a415d6788c87b9a41e",
"assets/assets/images/stuhlkreis.jpg": "071fefc45ad081b519771c031e27d5e7",
"assets/assets/images/talk.gif": "be12aa2a77f38f5d2b77e232978adc93",
"assets/assets/images/taxi.jpg": "99a7fcdd25566c8f4b31f42bb774b627",
"assets/assets/images/theater.jpg": "293227881d8a8023daabfc977d7f72f5",
"assets/assets/images/time.jpg": "87f91973d908399a16fff7d9b1094ac6",
"assets/assets/images/toilette.jpg": "b4d32b71d7fb4cd1bc3675d7a1c6161c",
"assets/assets/images/trippy1.jpg": "df742d9d6b831b5238d8004d0afa2c8c",
"assets/assets/images/trippy2.jpg": "d1d3f9f32cbf354e2ba18f3e158c89d0",
"assets/assets/images/trippy3.jpg": "caf47be054217782a52245ab2d4f6df2",
"assets/assets/images/twerk.jpg": "28198e702eaebbdececd9c7af55ce845",
"assets/assets/images/umarmen.jpg": "bdcfdf39ec903331f5aa3c44bd800ed7",
"assets/assets/images/uno.jpg": "55dfe8cf7d07fcbdd415992f0e639ffa",
"assets/assets/images/uno2.jpg": "5cb2df4ed57be75d3fd09cc1ec8ed84a",
"assets/assets/images/v%2520(1).jpg": "8b39fc3cd99b323637fcb5d689d9d934",
"assets/assets/images/v%2520(10).jpg": "496b264b0e59b7ad52d73dd57f2fae00",
"assets/assets/images/v%2520(11).jpg": "da7a5fada83bdc0080ae29f9e096cdad",
"assets/assets/images/v%2520(12).jpg": "9faec443cb59705b0ce763a5e1896b14",
"assets/assets/images/v%2520(13).jpg": "88d9024e0962cc0964c03cc1efc1783b",
"assets/assets/images/v%2520(14).jpg": "9c2cb4df904933ac80a497632cd34df0",
"assets/assets/images/v%2520(15).jpg": "ff84eb5f28b0f2dff25687930b45b63a",
"assets/assets/images/v%2520(16).jpg": "8757c3280bd78133857d39d1188d8b8a",
"assets/assets/images/v%2520(17).jpg": "637c9b82f3fa3ca4aea7445b216a8d0e",
"assets/assets/images/v%2520(18).jpg": "326f63a6ce73725377143d3ef7826336",
"assets/assets/images/v%2520(2).jpg": "9089015a50dafd284be36617c606024d",
"assets/assets/images/v%2520(3).jpg": "ddfb3bed84e1d4f2bbfbfa99b026585a",
"assets/assets/images/v%2520(4).jpg": "b63112522a46bc21373a8a851e98204b",
"assets/assets/images/v%2520(5).jpg": "cb3b104f35836bd6b18b307b346f6863",
"assets/assets/images/v%2520(6).jpg": "7b18f6ecc6f32b07cc003d2c8b6d489d",
"assets/assets/images/v%2520(7).jpg": "f27be58bb7ffea75bd3c343c1e7982a1",
"assets/assets/images/v%2520(8).jpg": "c8ed0d2cd998606d2ebdf8fccd80eb16",
"assets/assets/images/v%2520(9).jpg": "c68c8e6c65e1f29c62518356dd3f9503",
"assets/assets/images/wasch.jpg": "dbcda8a793444832ed809dbabecfface",
"assets/assets/images/weed.jpg": "2b746b4bfd06a2cbf76beff7cb07580e",
"assets/assets/images/winken.png": "9a4c3e9ba89005460d5241d0f3855dbb",
"assets/assets/images/woods.jpg": "25a0a8129f706e8405f9ea50ecb81c4b",
"assets/assets/images/ziege.jpg": "c4753ca018953e815c2c2f7c589865a9",
"assets/assets/metadata.yml": "dbe407f7e63b3e3317bbecf80288f7d2",
"assets/assets/music/song.mp3": "9344d586a30f2fd77d14db0ac397312b",
"assets/assets/packs/eskalation.yml": "7e06a455ce85e868b0d0983f0a6a1b4f",
"assets/assets/packs/kiffen.yml": "0291716520499e88627158e1f70f1f1d",
"assets/assets/packs/start.yml": "7c54aef599346e37a3f9d4ad4d028a2e",
"assets/assets/packs/test.yml": "5c9bdabf80f880ffb024e0f6d226ce9a",
"assets/assets/sounds/chirp.mp3": "da98ceb83e29c6d303853fdf7d127f68",
"assets/assets/sounds/pop/primary/s1.mp3": "64e809bdad34b4f1b70b6062680594df",
"assets/assets/sounds/pop/primary/s2.mp3": "230957690656c6a0b6d1b5bfe294bda1",
"assets/assets/sounds/pop/secondary/s1.mp3": "6654cbae9840b05afe63f8f2135045de",
"assets/assets/sounds/pop/secondary/s2.mp3": "e040b64ea31f7c53695781019d793ca9",
"assets/assets/sounds/pop/secondary/s3.mp3": "7d94814658260400bfea8a00661fa446",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/icons/android.png": "f12988b3beffa780b9dcb7c688e6985d",
"assets/NOTICES": "20999a40b24ed1486ce3b7fff82a855b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"favicon.png": "1383db74b8154fe252d47cf94f689435",
"icons/Icon-192.png": "582d55074a7cd4d4a2560609317c205d",
"icons/Icon-512.png": "5fe5bf5be53fc2c399aee77a920f8286",
"index.html": "35930214c71a7ed463c0b9f4f2f8da30",
"/": "35930214c71a7ed463c0b9f4f2f8da30",
"main.dart.js": "e44bd7ef8443920f8fe4e7037db30e48",
"manifest.json": "1bcfbf241cc41f1c7f931fe324e27be3",
"version.json": "f20a2d60ed962305f420354ba54943f5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
