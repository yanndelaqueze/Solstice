// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application";

import AddressAutocompleteController from "./address_autocomplete_controller";
application.register("address-autocomplete", AddressAutocompleteController);

import HelloController from "./hello_controller";
application.register("hello", HelloController);
