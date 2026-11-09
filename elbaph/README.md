# ELBAPH

[Install / download](https://opcgpro-kkfromkor.pages.dev/install.html) · [Latest ELBAPH release](https://github.com/kkfromkor/OPTCG/releases/tag/elbaph-1.1.0)

ELBAPH 1.1.0 introduces full client updates. Install this version once if using 1.0.0. Subsequent releases are discovered automatically through `update.json` in this directory.

- Windows: downloads automatically and installs after the client exits.
- Android: downloads automatically on Wi-Fi/unmetered networks, then requires Android installation confirmation.
- iOS: checks automatically and offers the existing registered-device installation page. iOS installation confirmation is required.

The update envelope contains a Base64 JSON payload and RSA-SHA256 signature. Clients pin the public key and verify package size/hash. An unavailable service does not prevent using the installed client.

Original clients continue to use the repository root `update.json` and their existing runtime paths. Latest original REV77 releases, original native cores, latest WindBot source/binary and Git history/tags are retained. Old releases were removed only from GitHub; original PC folders were not deleted.

Development source: private `kkfromkor/opcgpro`, `client/elbaph`. Signed publication uses the existing private `kkfromkor/opcgpro-ios` release pipeline.
