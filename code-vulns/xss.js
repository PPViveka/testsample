// xss.js
function showMessage() {
  const input = document.getElementById("input").value;

  // ❌ Direct DOM injection
  document.getElementById("output").innerHTML = input;
}
