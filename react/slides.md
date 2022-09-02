---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://source.unsplash.com/collection/94734566/1920x1080
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# persist drawings in exports and build
drawings:
  persist: false
# use UnoCSS (experimental)
css: unocss
---

# React.js

---
layout: two-cols
---

## Outline

- Virtual DOM
- React Hooks
  - useState
  - useEffect
  - useMemo, useCallback
  - custom hooks
- state management
  - Context API
  - Mobx
  - Redux

::right::

- React Router
- UI Library
  - BootStrap
  - TailwindCSS, daisyUI
  - MUI

---
layout: two-cols
class: flex flex-col items-center
---

## Document Object Model

<img src='/render-process.png' alt='render-process' class='h-50' />
<img src='/computing-style.png' alt='computing-style' class='h-50' />

> Reference: [DOM 和 Virtual DOM 是什麼？認識 Document Object Model](https://tw.alphacamp.co/blog/dom-and-virtual-dom)

::right::

## Virtual DOM

<img src='/virtual-dom.png' alt='virtual-dom' class='h-50' />

<div class='text-base'>

- Virtual DOM 本身是一個 JavaScript 的物件，存在在 memory 當中
- 每當有事件產生，或是資料變動的時候，前端框架會先建立一個新的 virtual DOM，接著，計算出新舊 virtual DOM 之間的差別
- 僅變更有更動的部分，避免不必要的 reflow 或 repaint
- Diffing
  - 兩個不同類型的 HTML element 會產生不同的 tree
  - 開發者可以透過 "key" 的標記，來判斷畫面有無需要更動

</div>

---

- React.js -> Next.js
- Vue.js -> Nuxt.js

---
layout: iframe-right
url: https://react-ts-pyvqz2.stackblitz.io
---

<div class='w-full h-full flex items-center justify-center'>
  <a href='https://stackblitz.com/edit/react-ts-pyvqz2?file=App.tsx' class='text-6xl' target='_blank'>Demo</a>
</div>

---
layout: two-cols
---

## [React Hooks](https://reactjs.org/docs/hooks-reference.html)

- 只能在 React Function 中呼叫 Hook
- 只在最上層呼叫。 不要在迴圈、條件式或是巢狀的 function 內呼叫。

- useState
  - 會回傳[state, setter]
  - 當 state 改變觸發 re-render

```ts
const [todos, setTodos] = useState<ITodo[]>([]);
```

::right::

- useEffect
  - 參數為 effect function, dependencies
  - return of effect function is cleanup function
  - 當 dependencies 一改變就會觸發 effect function
  - 若 dependencies 為空陣列則只會在剛產生 component(ComponentDidMount) 以及 component 銷毀時觸發(ComponentWillUnmount)

```ts
useEffect(() => {
  const data = localStorage.getItem('todos');
  if (data) {
    setTodos(JSON.parse(data));
  }
}, []);
```

---

### Memorized Hook

- useMemo
  - dependencies 沒改變的狀況下，回傳運算後保存下來的值
- useCallback
  - dependencies 沒改變的狀況下，回傳保存下來的 function

```ts
const addTodo = useCallback(() => {
  const data = [...todos, { title, description, done: false }];
  setTodos(data);
  save(data);
  setTitle('');
  setDescription('');
}, [todos, title, description, save]);
```

---

### Custom Hook

- A custom Hook is a JavaScript function whose name starts with ”use” and that may call other Hooks.

```ts
function useLocalStorege<T extends any>(key: string, initialValue: T) {
  const [state, setState] = useState<T>(() => {
    const data = localStorage.getItem(key);
    try {
      return JSON.parse(data);
    } catch (e) {
      return initialValue;
    }
  });

  useEffect(() => {
    state && localStorage.setItem(key, JSON.stringify(state));
  }, [state]);

  return [state, setState] as [T, Dispatch<SetStateAction<T>>];
}
```

#### Packages of Custom Hooks

- [react-use](https://github.com/streamich/react-use)
- [usehooks-ts](https://usehooks-ts.com)

---

## Component

- 大寫開頭
- PropsWithChildren

```tsx
const TodoItem = ({ checked, title, onChecked, onDelete }: IProps) => {
  return (
    <li className="todolist-item">
      <input
        type="checkbox"
        checked={checked}
        onChange={(e) => onChecked(e.target.checked)}
      />
      {title}
      <button onClick={onDelete}>x</button>
    </li>
  );
};
```
```tsx
<TodoItem
  key={todo.title}
  title={todo.title}
  checked={todo.done}
  onChecked={(checked) => toggleDone(todo, checked)}
  onDelete={() => removeTodo(todo)}
/>
```

---
layout: two-cols
---

### State Management

- Context API
<img src='/context-api.jpeg' alt='context api' class='h-50' />
- [Mobx](https://mobx.js.org/README.html)
- [Redux](https://redux.js.org/)

::right::

```ts
export const rootContext = createContext<IRootContext>({
  todos: [],
});
```

---

## [React Router](https://reactrouter.com/en/main)

---

## UI Libries

- [BootStrap](https://getbootstrap.com)
- [TailwindCSS](https://tailwindcss.com)(, [daisyUI](https://daisyui.com))
- [MUI](https://mui.com)

---

## Some Usefull Packages

- [Lodash](http://lodash.com/)
- [React Hook Form](https://react-hook-form.com)
