const use = () => {
  const useButton = document.getElementById("use");
  const useForm = document.getElementById("use_form");
  const okButton = document.getElementById("ok")

  useButton.addEventListener('mouseover', () => {
    useButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  useButton.addEventListener('mouseout', () => {
    if (useForm.getAttribute("style") == "display:block;") {
    } else {
      useButton.removeAttribute("style");
    };
  });
  useButton.addEventListener('click', () => {
    if (useForm.getAttribute("style") == "display:block;") {
      useForm.removeAttribute("style");
    } else {
      useForm.setAttribute("style", "display:block;");
    };
  });
  
  okButton.addEventListener('mouseover', () => {
    okButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  okButton.addEventListener('mouseout', () => {
    okButton.removeAttribute("style");
  });
};

window.addEventListener("load", use);