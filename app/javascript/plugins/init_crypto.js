const crypto = document.querySelector("#crypto-show-wrapper");

const cryptoUpdate = () => {
  crypto.addEventListener("load", (event) => {
    setTimeout(function () {
      window.location = window.location;
    }, 5000);
  });
};

export { cryptoUpdate };
