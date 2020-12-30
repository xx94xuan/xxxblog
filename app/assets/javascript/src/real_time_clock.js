var timeDisplay = document.getElementById("real-time");

// let options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
let options = { hour12: false }

function refreshTime() {
  var dateString = new Date().toLocaleString("en-US");
  var formattedString = dateString.replace(", ", " - ");
  timeDisplay.innerHTML = formattedString;
}

setInterval(refreshTime, 5000);
