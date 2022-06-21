## [Plugins](https://tailwindcss.com/docs/plugins) used in Zed

`tailwind.config.js`

```js
module.exports = {
  plugins: [
    plugin(function ({ addVariant }) {
      addVariant('child', '& > *')
      addVariant('recursively', '& *')
      addVariant('popper-hide', '&[data-popper-reference-hidden="true"]')
      addVariant('popper-escape', '&[data-popper-escaped="true"]')
    }),
    plugin(function ({ addVariant, e }) {
      addVariant('not-first', '&:not(:first-child)')
      addVariant('not-last', '&:not(:last-child)')
    }),
  ]
}
```

---
layout: two-cols
class: first:pr-5 last:pl-5
---

## [Plugins](https://tailwindcss.com/docs/plugins) used in Zed

`tailwind.config.js`

```js {4,5}
module.exports = {
  plugins: [
    plugin(function ({ addVariant }) {
      addVariant('child', '& > *')
      addVariant('recursively', '& *')
      addVariant('popper-hide', '&[data-popper-reference-hidden="true"]')
      addVariant('popper-escape', '&[data-popper-escaped="true"]')
    }),
    plugin(function ({ addVariant, e }) {
      addVariant('not-first', '&:not(:first-child)')
      addVariant('not-last', '&:not(:last-child)')
    }),
  ]
}
```

::right::

- `child:*`
  - apply a style to its children

```css
& > * {
  ...
}
```

- `recursively:*`
  - apply a style to its children recursively
  - `recursively:leading-none`

```css
& * {
  line-height: 0;
}
```

---

## [Plugins](https://tailwindcss.com/docs/plugins) used in Zed

- Chain of modifiers

```html
<div class="first:child:text-red-500 last:child:text-green-500">
  <button>Red Text Btn</button>
  <button>Btn</button>
  <button>Green Text Btn</button>
</div>
```

```html
<div>
  <button class="first:text-red-500 last:text-green-500">Red Text Btn</button>
  <button class="first:text-red-500 last:text-green-500">Btn</button>
  <button class="first:text-red-500 last:text-green-500">Green Text Btn</button>
</div>
```


::right::

<div class="flex flex-col items-center justify-center gap-4 h-full">
  <button class="border first:text-red-500 last:text-green-500 px-4 py-3 rounded">Red Text Btn</button>
  <button class="border first:text-red-500 last:text-green-500 px-4 py-3 rounded">Btn</button>
  <button class="border first:text-red-500 last:text-green-500 px-4 py-3 rounded">Green Text Btn</button>
</div>