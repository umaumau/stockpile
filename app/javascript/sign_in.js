const sign_in = () => {
  const sessionButton = document.getElementById("session_btn");
  const registrationLink = document.getElementById("registration_link");

  sessionButton.addEventListener('mouseover', () => {
    sessionButton.setAttribute("style", "background-color:#FFB6C1; color:#fff;");
  });
  sessionButton.addEventListener('mouseout', () => {
    sessionButton.removeAttribute("style");
  });

  registrationLink.addEventListener('mouseover', () => {
    registrationLink.setAttribute("style", "background:linear-gradient(transparent 70%, #fdebf0 0%);");
  });
  registrationLink.addEventListener('mouseout', () => {
    registrationLink.removeAttribute("style");
  });
};

window.addEventListener("load", sign_in);