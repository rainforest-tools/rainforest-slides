---
layout: two-cols
class: first:pr-5 last:pl-5
---

## [Adding Custom Styles](https://tailwindcss.com/docs/adding-custom-styles)

- `tailwindcss.config.js`

```js
const colors = {
  primary: '#008C15',
  'primary-focus': '#3EAC5C',
  'hg-gray': {
    /*                                        */ /*  dark   */ /*  light  */
    800: withOpacityValue('--color-hg-gray-800') /* #FFFFFF */ /* #414844 */,
    700: withOpacityValue('--color-hg-gray-700') /* #F3F4F5 */ /* #878B88 */,
    600: withOpacityValue('--color-hg-gray-600') /* #9CA1A5 */ /* #A5A8A5 */,
    500: withOpacityValue('--color-hg-gray-500') /* #55585B */ /* #C4C4C4 */,
    400: withOpacityValue('--color-hg-gray-400') /* #404448 */ /* #EEEFEE */,
    300: withOpacityValue('--color-hg-gray-300') /* #2B2E30 */ /* #F3F4F5 */,
    200: withOpacityValue('--color-hg-gray-200') /* #323436 */ /* #FAFBFB */,
    100: withOpacityValue('--color-hg-gray-100') /* #212224 */ /* #FFFFFF */,
  },
  'hover-gray': withOpacityValue('--color-hover-gray'),
  ask: '#FF4938',
  bid: '#19C08E',
  'dropdown-bg': withOpacityValue('--color-dropdown'),
  subtitle: withOpacityValue('--color-subtitle'),
}
...
```
::right::

```js
module.exports = {
  extend: {
    colors: {
      ...colors,
    },
    spacing: {
      112: '28rem',
      128: '32rem',
      144: '36rem',
      160: '40rem',
      200: '50rem',
      modal: '420px',
      'modal-wide': '520px',
    },
    boxShadow: {
      modal: '0px 0px 12px rgba(0, 0, 0, 0.15)',
      dropdown: '0px 0px 12px 2px rgba(0, 0, 0, 0.15)',
      // unstable
      card: '0px 0px 10px rgba(65, 72, 68, 0.1)',
      'card-hover': '0px 2px 12px 5px rgba(0, 0, 0, 0.1)',
      btn: '0px 0px 4px rgba(0, 0, 0, 0.1)',
      'btn-hover': '0px 2px 12px rgba(0, 0, 0, 0.15)',
    },
    ...
  }
}
```

---
layout: two-cols
class: first:pr-5 last:pl-5
---

## [Adding Custom Styles](https://tailwindcss.com/docs/adding-custom-styles)

- Arbitrary values

```html
<button
  class="
    ...
    bg-[#EEEFEE] text-[#414844] 
    hover:bg-[#6A766E] hover:text-[#FFFFFF] 
    dark:bg-[#404448] dark:text-[#FFFFFF] dark:hover:bg-[#6B6F73]
  "
>
  ExFcD7...B7fb
  <img src="/goby.png" />
</button>
```

::right::

```html
<button
  class="
    ...
    bg-hg-gray-400 text-hg-gray-800
    hover:bg-hover-gray hover:text-hg-gray-100
    dark:bg-hg-gray-400 dark:text-hg-gray-800 dark:hover:bg-hover-gray
  "
>
  ExFcD7...B7fb
  <img src="/goby.png" />
</button>
```

```html
<button
  class="
    ...
    bg-hg-gray-400 text-hg-gray-800
    hover:bg-hover-gray hover:text-hg-gray-100
  "
>
  ExFcD7...B7fb
  <img src="/goby.png" />
</button>
```