const crypto = document.querySelector("#header-show");

const cryptoUpdate = () => {
  crypto.addEventListener("mouseover", (event) => {
    console.log("works");
    setTimeout(function () {
      window.location = window.location;
    }, 5000);
  });
};

export { cryptoUpdate };
