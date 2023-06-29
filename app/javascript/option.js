const option = () => {
  const optionSubmitButton = document.getElementById("option_submit_btn");

  optionSubmitButton.addEventListener('mouseover', () => {
    optionSubmitButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  optionSubmitButton.addEventListener('mouseout', () => {
    optionSubmitButton.removeAttribute("style");
  });
};

window.addEventListener('load', option);