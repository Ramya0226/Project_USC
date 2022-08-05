// Fetch function to fetch data from API
fetch("https://ramyagopinath08.github.io/Lg55UP80IroNmAn/images/data.json")
  .then((res) => {
    if (res.ok) {
      return res.json();
    } else {
      throw new Error("Network Response Error");
    }
  })
  .then((data) => {
    displayCardData(data.section2);
    displayTextImageData(data.section3);
    displaySec4(data.section4);
  })
  .catch((error) => {
    console.error("Fetch error", error);
  });

// Function to display section 2 data, from fetched json
function displayCardData(data) {
  const section2Div = document.getElementById("section2");
  const cardData = data;
  const imagePath = "https://ramyagopinath08.github.io/Lg55UP80IroNmAn/images/";

  cardData.forEach((element) => {
    var cardsDiv = document.createElement("div");
    cardsDiv.classList.add("cardContainer");

    var imageDiv = document.createElement("div");
    imageDiv.classList.add("cardImageContainer");

    var cardImage = document.createElement("img");
    cardImage.src = imagePath + element.image;
    imageDiv.appendChild(cardImage);

    var cardHeading = document.createElement("h1");
    cardHeading.innerHTML = element.heading;

    var cardText = document.createElement("p");
    cardText.innerHTML = element.text;

    cardsDiv.appendChild(imageDiv);
    cardsDiv.appendChild(cardHeading);
    cardsDiv.appendChild(cardText);

    section2Div.appendChild(cardsDiv);
  });
}

// Function to display section 3 data, from fetched json

function displayTextImageData(data) {
  const section3Div = document.getElementById("section3");

  const innerDiv = document.createElement("div");
  innerDiv.classList.add("innerDiv");
  const textData = data.text;

  const textDiv = document.createElement("div");
  textDiv.classList.add("textDiv");
  textData.forEach((element) => {
    var tempP = document.createElement("p");
    tempP.innerHTML = element;

    textDiv.appendChild(tempP);
  });
  const imageLASky = document.createElement("img");
  imageLASky.src = "https://ramyagopinath08.github.io/Lg55UP80IroNmAn/images/lasky.png";

  innerDiv.appendChild(textDiv);
  innerDiv.appendChild(imageLASky);
  console.log(innerDiv);

  section3Div.appendChild(innerDiv);
}

// Function to display section 4 data, from fetched json

function displaySec4(data) {
  const section4Div = document.getElementById("section4");
  const infoData = data;
  const imagePath = "https://ramyagopinath08.github.io/Lg55UP80IroNmAn/images/";

  infoData.forEach((element) => {
    var infoDiv = document.createElement("div");
    infoDiv.classList.add("infoContainer");

    var imageDiv = document.createElement("div");
    imageDiv.classList.add("infoImage");

    var img = document.createElement("img");
    img.src = imagePath + element.image;
    imageDiv.appendChild(img);

    var txtDiv = document.createElement("div");
    txtDiv.classList.add("infoText");

    var infoHead = document.createElement("h1");
    infoHead.innerHTML = element.heading;

    var infoPara = document.createElement("p");
    infoPara.innerHTML = element.text;

    txtDiv.appendChild(infoHead);
    txtDiv.appendChild(infoPara);

    infoDiv.appendChild(imageDiv);
    infoDiv.appendChild(txtDiv);

    section4Div.appendChild(infoDiv);
  });
}
