// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application";

import TestController from "./test_controller";
application.register("test", TestController);

import AddressAutocompleteController from "./address_autocomplete_controller";
application.register("address-autocomplete", AddressAutocompleteController);

import HelloController from "./hello_controller";
application.register("hello", HelloController);

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
