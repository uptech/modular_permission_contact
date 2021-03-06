# modular_permission_contact

Microphone permission plugin to be used with the [Modular App Permissions plugin](https://github.com/uptech/modular_app_permissions).

## Plugin Information

This plugin is not intended to be used on its own. It is designed to be used in the [Modular App Permissions
plugin](https://github.com/uptech/modular_app_permissions). Using this plugin by itself will work
but the developer is responsible for building the Dart interface.  

## Permission Definition

- *Android*: This plugin automatically includes the `<uses-permission android:name="android.permission.READ_CONTACTS"/>`.
  - If you want **WRITE** permission you must manually include `<uses-permission android:name="android.permission.WRITE_CONTACTS"/>` in your AndroidManifest.xml and in the example AndroidManifest.xml. 
  - Then you must call `checkWriteContactPermission` or `requestWriteContactPermission` respectively. 
- *iOS*: Not currently supported

## About <img src="https://upte.ch/img/logo.png" width="180">

`modular_permission_contact`is maintained and funded by [UpTech Works, LLC](https://upte.ch/), a
software product, design & development consultancy.

We love open source software. See [our other projects](https://github.com/uptech) or
[hire us](https://upte.ch/) to design, develop, and grow your product.