let age,weight
function myfunction(){
    age = parseFloat(document.getElementById("agebox").value)
    weight = parseFloat(document.getElementById("weightbox").value)

    let toolTipDivAge = document.getElementById("ageTooltip")
    let toolTipDivWeight = document.getElementById("weightTooltip")

    if (isNotANumber(age)) {
      toolTipDivAge.classList.replace("tooltiptext","tooltiptextshow")
      return
    }
    else{
      toolTipDivAge.classList.replace("tooltiptextshow","tooltiptext")
      toolTipDivWeight.classList.replace("tooltiptextshow","tooltiptext")
    }

    if (isNotANumber(weight)) {
      toolTipDivWeight.classList.replace("tooltiptext","tooltiptextshow")
      return
    }
    else{
      toolTipDivAge.classList.replace("tooltiptextshow","tooltiptext")
      toolTipDivWeight.classList.replace("tooltiptextshow","tooltiptext")
    }
    
    let data = {
        "age": age,
        "weight":weight
    };


   
    

    fetch('https://ramyagopinath.pythonanywhere.com/', {
        method: "POST",
        body: JSON.stringify(data),
        headers: {
          "Content-type": "application/json",
          Accept: "application/json",
        },
      })
        .then((res) => {
          if (res.ok) {
            return res.json();
          } else {
            throw "Something went wrong";
          }
        })
        .then((jsonRes) => {
          myDiv = document.getElementById("predict");
          // console.log(jsonRes);
          myDiv.innerHTML = jsonRes;
        })
        .catch((err) => console.error("Something went wrong: ", err));
    }
    

    function isNotANumber(val){
      if (! Number.isInteger(val)){
        console.log(Number.isInteger(val))
        return true
      }
      return false
    }