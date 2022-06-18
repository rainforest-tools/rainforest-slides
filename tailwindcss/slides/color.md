---
layout: two-cols
class: first:pr-5 last:pl-5 flex flex-col justify-between
---

```css {10-11}
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

::right::

```html {4-6}
<button
  class="
    ...
    bg-[#EEEFEE] text-[#414844]
    hover:bg-[#6A766E] hover:text-[#FFFFFF] 
    dark:bg-[#404448] dark:text-[#FFFFFF] dark:hover:bg-[#6B6F73]"
>
```

- [Text](https://tailwindcss.com/docs/text-color)


- [Background Color](https://tailwindcss.com/docs/background-color)

- [Background Image](https://tailwindcss.com/docs/background-image)

```html
<div class="h-14 bg-gradient-to-r from-cyan-500 to-blue-500 rounded"></div>
```

<div class="h-14 bg-gradient-to-r from-cyan-500 to-blue-500 rounded"></div>