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
  ## React
  A JavaScript library for building user interfaces

  Learn more at [React](https://reactjs.org)
# persist drawings in exports and build
drawings:
  persist: false
# use UnoCSS (experimental)
# css: unocss
---

# React.js

---
layout: two-cols
---

## Outline

- Virtual DOM
- - CSR v.s. SSR
- Demo
- Getting Started
  - [Create React App](https://create-react-app.dev/)
  - [Vite](https://vitejs.dev/)
  - [CDN](https://reactjs.org/docs/cdn-links.html)
- React Hooks
  - useState
  - useEffect
  - useMemo, useCallback
  - custom hooks

::right::

- state management
  - Context API
  - Mobx
  - Redux
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

- CSR(Client-Side Rendering)
  - 由Server端回傳資料，再由前端利用 Javascript 產生 HTML。在執行期間「動態」去跟後端Server拿資料，再動態產生看到的那些元素。
- SSR(Server-Side Rendering)
  - 由Server端的 CPU 收到請求後，解析完整的 HTML 返回到使用者接收端，然後呈現網頁。

| CSR                              | SSR                            |
| -------------------------------- | ------------------------------ |
| [React.js](https://reactjs.org/) | [Next.js](https://nextjs.org/) |
| [Vue.js](http://vuejs.org/)      | [Nuxt.js](https://nuxtjs.org/) |

> [CSR與SSR概述比較](https://hackmd.io/@spyua/HJDJUaTSO)

---
layout: iframe-right
url: https://react-ts-pyvqz2.stackblitz.io
---

<div class='w-full h-full flex items-center justify-center'>
  <a href='https://stackblitz.com/edit/react-ts-pyvqz2?file=App.tsx' class='text-6xl' target='_blank'>Demo</a>
</div>

---
layout: two-cols
class: first:mr-5 last:ml-5
---

## CRA, Create React App

- JavaScript

```bash
npx create-react-app [PROJECT_NAME]
```

- TypeScript

```bash
npx create-react-app [PROJECT_NAME] --template typescript
```

::right::

## Vite

- JavaScript

```bash
npm create vite@latest [PROJECT_NAME] --template react
```

- TypeScript

```bash
npm create vite@latest [PROJECT_NAME] --template react-ts
```

> [Vite 3.0 vs. Create React App: Comparison and migration guide](https://blog.logrocket.com/vite-3-vs-create-react-app-comparison-migration-guide/)

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
