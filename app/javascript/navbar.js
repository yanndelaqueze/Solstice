console.log("CART JS");
const cartButton = document.querySelector("#cart-button");
const cartContent = document.querySelector("#cart-content");

cartContent.classList.add("cart-content-displayed");

cartButton.addEventListener("mouseenter", () => {
  cartContent.style.display = "block";
});

cartButton.addEventListener("mouseleave", () => {
  cartContent.style.display = "none";
});
