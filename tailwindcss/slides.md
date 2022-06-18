---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: /cover.png
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## Tailwind CSS
  A utility-first CSS framework.

  Learn more at [Tailwind CSS](https://tailwindcss.com/)

  Cover photo courtesy of Design Lead Ann
# persist drawings in exports and build
drawings:
  persist: false
---

# Tailwind CSS

A utility-first CSS framework

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    Press Space for next page <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" alt="GitHub"
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---
layout: two-cols
---

<div class="full flex-center">
  <div class="grid grid-cols-2 gap-y-5 gap-x-10">
    <span>Tailwind CSS</span>
    <span>Pure CSS</span>
    <WalletButton />
    <button class="wallet-btn">
      ExFcD7...B7fb
      <img src="goby.png" />
    </button>
  </div>
</div>

::right::

```html
<button
  class="
    py-2 px-3 text-sm rounded
    flex items-center gap-1 
    bg-[#EEEFEE] text-[#414844] 
    hover:bg-[#6A766E] hover:text-[#FFFFFF] 
    dark:bg-[#404448] dark:text-[#FFFFFF] dark:hover:bg-[#6B6F73]
  "
>
  ExFcD7...B7fb
  <img src="goby.png" />
</button>
```

---
layout: two-cols
---

<div class="full flex-center">
  <div class="grid grid-cols-2 gap-y-5 gap-x-10">
    <span>Tailwind CSS</span>
    <span>Pure CSS</span>
    <WalletButton />
    <button class="wallet-btn">
      ExFcD7...B7fb
      <img src="goby.png" />
    </button>
  </div>
</div>

::right::

```html
<button class="wallet-btn">ExFcD7...B7fb<img src="goby.png" /></button>
```
```css
.wallet-btn {
  padding: 0.5rem 0.75rem;
  border-radius: 0.25rem;
  font-size: 0.875rem;
  line-height: 1.25rem;
  display: flex;
  align-items: center;
  grid-gap: 0.25rem;
  gap: 0.25rem;
  background-color: #eeefee;
  color: #414844;
}
.wallet-btn:hover {
  background-color: #6a766e;
  color: #ffffff;
}
.dark .wallet-btn {
  background-color: #404448;
  color: #ffffff;
}
.dark .wallet-btn:hover {
  background-color: #6b6f73;
}
```

---
src: ./slides/base.md
---

---
src: ./slides/display.md
---

---
src: ./slides/color.md
---

---
src: ./slides/hover.md
---
