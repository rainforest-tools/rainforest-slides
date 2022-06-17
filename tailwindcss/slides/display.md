---
layout: two-cols
class: first:pr-5 last:pl-5
---

```css {6-9}
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

## Layout

### Flex

```html {4} 
<button
  class="
    py-2 px-3 text-sm rounded
    flex items-center gap-1 
    bg-[#EEEFEE] text-[#414844] 
```

<Flex className="w-full h-1/3" />

### Grid