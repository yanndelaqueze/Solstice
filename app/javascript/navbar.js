// Cart Display on mouse hover

console.log("Navbar JS - Hello");

const cartButton = document.querySelector("#cart-button");
const cartContent = document.querySelector("#cart-content");

cartContent.classList.add("cart-content-displayed");

cartButton.addEventListener("mouseenter", () => {
  cartContent.style.display = "block";
});

cartButton.addEventListener("mouseleave", () => {
  cartContent.style.display = "none";
});

// Log in / out Dropdown menu

const avatar = document.getElementById("navbarDropdown");
const dropdown = document.querySelector(".avatar-dropdown");
const dropdownContent = document.querySelector(".login-menu");

// avatar.addEventListener("click", (e) => {
//   console.log(e);
//   dropdown.classList.remove("login-menu");
//   dropdown.classList.add("login-menu-displayed");
// });

avatar.addEventListener("click", function (e) {
  console.log(e);
  e.stopPropagation();
  dropdownContent.style.display = "block";
});

document.addEventListener("click", function (e) {
  if (!dropdown.contains(e.target)) {
    dropdownContent.style.display = "none";
  }
});
