// 1- Show or hide the delivery fields based on the selected transport mode (collect/delivery)

function toggleDeliveryFields() {
  const selectedTransport = document.querySelector(
    'input[name="order[transport]"]:checked'
  ).value;
  const deliveryFields = document.querySelector("#delivery-fields");

  if (selectedTransport === "Delivery") {
    deliveryFields.style.display = "block";
  } else {
    deliveryFields.style.display = "none";
  }
}
// Initially check and display the delivery fields when the page loads
toggleDeliveryFields();

// Add an event listener to all radio buttons for "transport"
document
  .querySelectorAll('input[name="order[transport]"]')
  .forEach(function (radio) {
    radio.addEventListener("change", toggleDeliveryFields);
  });

//2- Date constraint in form (Day + 2 minimum)
const dateInput = document.getElementById("order_date");

dateInput.addEventListener("change", () => {
  const selectedDate = new Date(dateInput.value);
  const today = new Date();

  // Calculate the minimum allowed date (2 days from now)
  const minDate = new Date(today);
  minDate.setDate(today.getDate() + 2);

  if (selectedDate < minDate) {
    alert("Merci de choisir une date dans 2 jours ou plus");
    dateInput.value = "";
  }
});

//3- Address Autocomplete

const geocoderElement = document.getElementById("geocoder");
const mapboxApiKey = geocoderElement.getAttribute("data-mapbox-api-key");

// Initiate Geocoder
const geocoder = new MapboxGeocoder({
  accessToken: mapboxApiKey,
  types: "country,region,place,postcode,locality,neighborhood, address",
});
geocoder.addTo("#geocoder");
const results = document.getElementById("result");
const addressInput = document.getElementById("order_delivery_address");

// Get results into input field
geocoder.on("result", (e) => {
  console.log(e.result.place_name);
  addressInput.value = e.result.place_name;
});

// Clear results container when search is cleared.
geocoder.on("clear", () => {});
