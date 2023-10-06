console.log("HELOOOOO");

const mapElement = document.getElementById("map");
const mapboxApiKey = mapElement.getAttribute("data-mapbox-api-key");
const polygonCoordinates = [
  JSON.parse(mapElement.getAttribute("data-polygon-coordinates")),
];
const addressCoords = JSON.parse(
  mapElement.getAttribute("data-address-coords")
);

// Display Map
mapboxgl.accessToken = mapboxApiKey;
const map = new mapboxgl.Map({
  container: "map",
  style: "mapbox://styles/mapbox/streets-v11",
  center: [55.56552, -21.35571],
  zoom: 11,
});
map.addControl(new mapboxgl.NavigationControl());

// Get polygon coordinates

//Display the Polygon on Map
map.on("load", function () {
  map.addLayer({
    id: "polygon",
    type: "fill",
    source: {
      type: "geojson",
      data: {
        type: "Feature",
        geometry: {
          type: "Polygon",
          coordinates: polygonCoordinates,
        },
      },
    },
    layout: {},
    paint: {
      "fill-color": "#F043AC",
      "fill-opacity": 0.5,
    },
  });
});

// Add Marker to Map
const marker = new mapboxgl.Marker().setLngLat(addressCoords).addTo(map);

// Initiate Geocoder
const geocoder = new MapboxGeocoder({
  accessToken: mapboxApiKey,
  types: "country,region,place,postcode,locality,neighborhood, address",
});
geocoder.addTo("#geocoder");
const addressInput = document.getElementById("order_delivery_address");

// Get results into input field
geocoder.on("result", (e) => {
  console.log(e.result.place_name);
  addressInput.value = e.result.place_name;
});

// Clear results container when search is cleared.
geocoder.on("clear", () => {});
