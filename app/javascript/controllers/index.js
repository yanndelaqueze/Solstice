// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application";

import TestController from "./test_controller";
application.register("test", TestController);

import AddressAutocompleteController from "./address_autocomplete_controller";
application.register("address-autocomplete", AddressAutocompleteController);

import DeliveryMapController from "./delivery_map_controller";
application.register("delivery-map", DeliveryMapController);

import HelloController from "./hello_controller";
application.register("hello", HelloController);
