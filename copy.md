---
title: Copy
permalink: /copy/
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>

<style>
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,400i,700");

* { box-sizing: border-box; }

body {
  --gap: 20px;
  text-align: center;
  margin: 0;
  padding: var(--gap);
  display: grid;
  grid-gap: var(--gap);
  min-height: 100vh;
  grid-template-rows: auto 1fr;
  background: #eee;
  overflow-x: hidden;
}
h1 {
  font-family: Montserrat, sans-serif;
  text-transform: uppercase;
  font-size: 18px;
  margin: 0;
  padding: var(--gap);
  background: #333;
  color: white;
}

.grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-gap: var(--gap);
}
.copy {
  background: white;
  border: 0;
  box-shadow: 0 0 2px rgba(0, 0, 0, 0.2);
  transition: 0.1s;
  padding-top: var(--gap);
}

.copy:hover, .copy:focus {
  transform: scale(1.02);
  box-shadow: 0 20px 20px rgba(0, 0, 0, 0.2);
}

.copy:active {
  outline: 0;
  transform: scale(1.01);
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
}

.copy h2 {
  font-family: Montserrat, sans-serif;
  margin: 0;
}
.copy span {
  font-size: 100px;
  font-family: georgia, serif;
}
</style>

<h1>Click-to-copy</h1>

<div class="grid">
 <button class="copy" data-clipboard-text="“">
    <h2>Opening Curly Double Quote</h2><span>“</span></button>
 <button class="copy" data-clipboard-text="”">
    <h2>Closing Curly Double Quote</h2><span>”</span></button>
 <button class="copy" data-clipboard-text="‘">
    <h2>Opening Curly Single Quote</h2><span>‘</span></button>
 <button class="copy" data-clipboard-text="’">
    <h2>Closing Curly Single Quote</h2><span>’</span></button>
 <button class="copy" data-clipboard-text="—">
    <h2>Em Dash</h2><span>—</span></button>
 <button class="copy" data-clipboard-text="–">
    <h2>En Dash</h2><span>–</span></button>
</div>

<script>
new ClipboardJS(".copy");
</script>