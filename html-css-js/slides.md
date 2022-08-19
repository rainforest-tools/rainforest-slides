---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://source.unsplash.com/collection/94734566/1920x1080
# apply any windi css classes to the current slide
class: 'text-center flex flex-col items-start last:items-center justify-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## HTML, CSS, and JavaScript
  
# persist drawings in exports and build
drawings:
  persist: false
download: true
layout: two-cols
---

# HTML, CSS, and JavaScript

Rainforest

::right::

- Overview
  - Frontend
  - Backend
  - DevOps
- HTML
- CSS
- JavaScript

---

## Overview

![](/full-stack.png)

> [roadmap.sh](https://roadmap.sh)

---
src: ./slides/html.md
---
---
src: ./slides/css.md
---
---
src: ./slides/javascript.md
---
---

## 如何分析網站
- [Wappalyzer](https://www.wappalyzer.com)
- Inspect Element
  - Elements
  - Console
  - Storage
  - (Sources)
## 如何開發網站
- Visual Studio Code + Web Server
  - [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
- [Codepen](http://codepen.io/)
- [Stackblitz](https://stackblitz.com)

---
layout: iframe-right
url: https://js-x9drwh.stackblitz.io
---

<div class='w-full h-full flex items-center justify-center'>
  <a href='https://stackblitz.com/edit/js-x9drwh?file=index.js' class='text-6xl' target='_blank'>Demo</a>
</div>