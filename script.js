function analyzeText() {
  const text = document.getElementById("textInput").value.trim();
  const words = text === "" ? 0 : text.split(/\s+/).length;
  const chars = text.length;

  document.getElementById("wordCount").textContent = words;
  document.getElementById("charCount").textContent = chars;
}
