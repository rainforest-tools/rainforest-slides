---
layout: two-cols
class: first:pr-5 last:pl-5
---

```css {12-16|17-23}
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

- [Pseudo-classes](https://tailwindcss.com/docs/hover-focus-and-other-states#pseudo-classes)
  - [Styling based on parent state](https://tailwindcss.com/docs/hover-focus-and-other-states#styling-based-on-parent-state)
  
    ```html
    <div class="group">
      <div class="group-{modifier}:xxx"></div>
    </div>
    ```
    ```css
    .group:{modifier} .group-{modifier} {
      ...
    }
    ```


- [<span class="hover:text-white before:content-[''] before:block before:duration-100 before:absolute before:-inset-1 before:transform before:hover:skew-y-4 before:hover:bg-pink-500 relative inline-block">
    <span class="relative">Pseudo-elements</span>
  </span>](https://tailwindcss.com/docs/hover-focus-and-other-states#pseudo-elements)


- [Media queries](https://tailwindcss.com/docs/hover-focus-and-other-states#media-queries)<div class="dark:bg-[#06DD27] w-2 h-2 rounded-full inline-block ml-1 transform -translate-y-1px"></div>


- [Attribute selectors](https://tailwindcss.com/docs/hover-focus-and-other-states#attribute-selectors)
