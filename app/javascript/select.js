const select = () => {
  const completeButton = document.getElementById("complete");
  const wastefulButton = document.getElementById("wasteful");
  const completeForm = document.getElementById("complete_form");
  const wastefulForm = document.getElementById("wasteful_form");
  const completeSendButton = document.getElementById("complete_btn");
  const wastefulSendButton = document.getElementById("wasteful_btn");

  completeButton.addEventListener('mouseover', () => {
    completeButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
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
    } else if (completeForm.getAttribute("style") == "display:block;") {
      completeForm.removeAttribute("style");
    } else {
      completeForm.setAttribute("style", "display:block;");
    }
  })

  completeSendButton.addEventListener('mouseover', () => {
    completeSendButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  completeSendButton.addEventListener('mouseout', () => {
    completeSendButton.removeAttribute("style");
  });

  wastefulButton.addEventListener('mouseover', () => {
    wastefulButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
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
    } else if (wastefulForm.getAttribute("style") == "display:block;") {
      wastefulForm.removeAttribute("style");
    } else {
      wastefulForm.setAttribute("style", "display:block;");
    }
  })

  wastefulSendButton.addEventListener('mouseover', () => {
    wastefulSendButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  wastefulSendButton.addEventListener('mouseout', () => {
    wastefulSendButton.removeAttribute("style");
  });
}

window.addEventListener("load", select);