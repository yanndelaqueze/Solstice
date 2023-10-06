console.log("Draw Delivery Area");

const mapElement = document.getElementById("map");
const mapboxApiKey = mapElement.getAttribute("data-mapbox-api-key");
const polygonCoordinates = [
  JSON.parse(mapElement.getAttribute("data-polygon-coordinates")),
];

mapboxgl.accessToken = mapboxApiKey;

// Initialize the Mapbox map
const map = new mapboxgl.Map({
  container: "map",
  style: "mapbox://styles/mapbox/streets-v12",
  center: [55.56552, -21.35571],
  zoom: 12,
  attributionControl: true,
});

// Add navigation controls (pan, zoom, etc.) --> NOT DISPLAYING, CHECK WHY !!
map.addControl(new mapboxgl.NavigationControl());

// Initialize a drawing tool
const draw = new MapboxDraw({
  displayControlsDefault: false,
  controls: {
    polygon: true, // Enable polygon drawing
    trash: true, // Allow users to delete drawn shapes
  },
});

map.addControl(draw);

// When the user creates a polygon, store its coordinates in the form input
map.on("draw.create", function (e) {
  const geojson = draw.getAll();
  console.log(geojson);
  if (geojson.features.length > 0) {
    const coordinates = geojson.features[0].geometry.coordinates[0];
    console.log(coordinates);
    document.querySelector("#polygon_coordinates").value =
      JSON.stringify(coordinates);
    console.log(JSON.stringify(coordinates));
  }
});

//Display the current Polygon on Map
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
