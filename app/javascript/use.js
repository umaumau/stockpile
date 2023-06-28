const use = () => {
  const useButton = document.getElementById("use");
  const useForm = document.getElementById("use_form");

  useButton.addEventListener('mouseover', () => {
    useButton.setAttribute("style", "background-color:#FFD700;");
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
};

window.addEventListener("load", use);