---
layout: two-cols
---

## HTML
- Hypertext Markup Language, 超文字標示語言
- 標記語言（markup language）
- 告訴瀏覽器該如何呈現你的網頁
- 巢狀元素（nesting element）

::right::

```html
<ul id="todo__items" class="todo__items">...</ul>
```
- `<ul`: opening tag
- `</ul>`: closing tag
- `...`: content
- `id`, `class`, ...: attributes
![grumpy-cat](/grumpy-cat-small.png)
![grumpy-cat-attribute](/grumpy-cat-attribute-small.png)
---
layout: two-cols
---

### HTML 基本架構

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My test page</title>
  </head>
  <body>
    <nav><img src="images/logo.png" alt="logo"></nav>
    <aside>
      <ul>
        <li>Item 01</li>
        <li>Item 02</li>
        ...
      </ul>
    </aside>
    <main>
      <p>
        This is demo text!
      </p>
    </main>
    <footer>Rainforest@2022</footer>
  </body>
</html>
```

::right::

- head
  - 提供網頁所需資源
    - CSS
    - JavaScript
  - 提供網頁資訊
    - title: 網頁標題
    - favicon
    - description
    - ...
- body
  - nav
  - aside
  - main
  - footer
  - ...

---
layout: two-cols
---

### HTML elements

#### `div`
-  the generic container for flow content
-  no effect on the content or layout until styled in some way using CSS

#### 文字相關
- heading: h1, h2, ..., h6
- paragraph: p 
- link: a
- span
  - generic inline container for phrasing content

> [Block-level elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements) v.s. [Inline elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements)

#### 清單
- Unordered lists: `ul -> li`
- Ordered lists: `ol -> li`

::right::

<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
<p>paragraph paragraph paragraph paragraph paragraph paragraph paragraph</p>
<a href='https://rainforest.tools' alt='rainforest-tools' target='_blank'>Rainforest</a>
<p>paragraph paragraph paragraph paragraph <span class='text-red-500'>span with red text</span> paragraph paragraph</p>

<div class='flex gap-10'>
<ul>
  <li>Unordered List Item 1</li>
  <li>Unordered List Item 2</li>
  <li>Unordered List Item 3</li>
  <li>...</li>
</ul>
<ol>
  <li>Ordered List Item 1</li>
  <li>Ordered List Item 2</li>
  <li>Ordered List Item 3</li>
  <li>...</li>
</ol>
</div>

---
layout: two-cols
---

### HTML elements(Cont.)

#### `img`

#### `table`

#### `button`

#### `form`
- `label`
- `input`
- `select`, `option`
- `textarea`

> [Further Reading](https://developer.mozilla.org/en-US/docs/Web/HTML)

::right::

<img src='/ha.png' alt='ha' />
<table>
  <thead>
    <tr>
      <td>Column 1</td>
      <td>Column 2</td>
      <td>...</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Cell 1</td>
      <td>Cell 2</td>
      <td>...</td>
    </tr>
    <tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
  </tbody>
</table>
<button>Button</button>
<form class='flex flex-col gap-2'>
  <input type='text' placeholder='text input'>
  <input type='number' placeholder='number input'>
  <input type='password' placeholder='password input'>
  <label for='select'>Lebel for Select</label>
  <select id='select'>
    <option>Option 1</option>
    <option>Option 2</option>
    <option>...</option>
  </select>
  <textarea placeholder='textarea'></textarea>
</form>

---
layout: two-cols
---

### ARIA
- Accessible Rich Internet Applications
- a set of roles and attributes that define ways to make web content and web applications (especially those developed with JavaScript) more accessible to people with disabilities.

> [Further Reading](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA)

::right::

### `data-*`
allow us to store extra information on standard, semantic HTML elements without other hacks such as non-standard attributes, or extra properties on DOM.
> [Further Reading](https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes)
