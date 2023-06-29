const sign_up = () => {
  const registrationButton = document.getElementById("registration_btn");
  const sessionLink = document.getElementById("session_link");
  
  registrationButton.addEventListener('mouseover', () => {
    registrationButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  registrationButton.addEventListener('mouseout', () => {
    registrationButton.removeAttribute("style");
  });

  sessionLink.addEventListener('mouseover', () => {
    sessionLink.setAttribute("style", "background:linear-gradient(transparent 70%, #fdebf0 0%);");
  });
  sessionLink.addEventListener('mouseout', () => {
    sessionLink.removeAttribute("style");
  });
};

window.addEventListener("load", sign_up);