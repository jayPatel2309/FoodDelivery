(function () {
    const cartInfo = document.getElementById("cart-info");
    const cart = document.getElementById("cart");

    cartInfo.addEventListener("click", function () {
        cart.classList.toggle("show-cart");
    })
})();

// (function () {
//     const cartBtn = document.getElementById(".store-item-icon");
//     cartBtn.forEach(function(btn) => {
//         btn.addEventListener("click", function(event){
//             if(event.target.parentElement.classList.contains("store-item-icon")){
//                 let fullPath = event.target.parentElement.previousElementSibling.src;
//                 let pos = fullPath.slice(pos);
//                 const item = {};
//                 item.
//             }
//         })
//     });
// })