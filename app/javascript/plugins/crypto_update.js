const cmcRank = document.querySelector("#cmc-rank");
const cryptoPrice = document.querySelector("#crypto-price");
const marketCap = document.querySelector("#market-cap");
const circSupply = document.querySelector("#circ-supply");
const maxSupply = document.querySelector("#max-supply");

const cryptoUpdate = () => {
  cmcRank.addEventListener("click", () => {
    cmcRank.innerHTML = "hey";
  });
};

export { cryptoUpdate };
