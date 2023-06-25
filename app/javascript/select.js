const select = () => {
  const completeButton = document.getElementById("complete");
  const wastefulButton = document.getElementById("wasteful");
  const completeForm = document.getElementById("complete_form");
  const wastefulForm = document.getElementById("wasteful_form");

  completeButton.addEventListener('mouseover', () => {
    completeButton.setAttribute("style", "background-color:#ffc0cb;");
  })
  completeButton.addEventListener('mouseout', () => {
    if (completeForm.getAttribute("style") == "display:block;") {
    } else {completeButton.removeAttribute("style");
    }
  })
  completeButton.addEventListener('click', () => {
    if (wastefulForm.getAttribute("style") == "display:block;") {
      wastefulForm.removeAttribute("style");
      completeForm.setAttribute("style", "display:block;");
      wastefulButton.removeAttribute("style");
    } else {
      completeForm.setAttribute("style", "display:block;");
    }
  })

  wastefulButton.addEventListener('mouseover', () => {
    wastefulButton.setAttribute("style", "background-color:#4169E1;");
  })
  wastefulButton.addEventListener('mouseout', () => {
    if (wastefulForm.getAttribute("style") == "display:block;") {
    } else {wastefulButton.removeAttribute("style");
    }
  })
  wastefulButton.addEventListener('click', () => {
    if (completeForm.getAttribute("style") == "display:block;") {
      completeForm.removeAttribute("style");
      wastefulForm.setAttribute("style", "display:block;");
      completeButton.removeAttribute("style");
    } else {
      wastefulForm.setAttribute("style", "display:block;");
    }
  })
}

window.addEventListener("load", select);