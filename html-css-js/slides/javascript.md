---
layout: two-cols
---

## JavaScript

- [JavaScript is bananas](https://dev.to/drochetti/javascript-is-bananas-5hn)

```js
+ 'a'
// NaN, Not a number
'b' + 'a'
// 'ba'
'b' + 'a' + + 'a' + 'a'
// 'baNaNa'
('b' + 'a' + + 'a' + 'a').toLowerCase()
// 'banana'
```
- == v.s. ===
  - ==: operator attempts to convert them to the same type before comparing.
  - ===: strict equality operators

::right::

- Shallow Copy v.s. Deep Copy
  - shallow copy is copy by reference
  - deep copy
  ```js
  const data = { a: 'test' }
  const b = Object.assign({}, data)
  const c = {...a}
  ``` 

- [JS HTML DOM](https://www.w3schools.com/js/js_htmldom.asp)
- [JS Web APIs](https://www.w3schools.com/js/js_api_intro.asp)

- [TypeScript](https://www.typescriptlang.org): strongly typed programming language that builds on JavaScript