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
  ## FastAPI
  FastAPI framework, high performance, easy to learn, fast to code, ready for production

  Learn more at [FastAPI](https://fastapi.tiangolo.com)
# persist drawings in exports and build
drawings:
  persist: false
# use UnoCSS
css: unocss
---

# FastAPI

FastAPI framework, high performance, easy to learn, fast to code, ready for production

---

## Web Application Architecture

<img src='/web-application-architecture-diagram.png' alt='Web Application Architecture' class='h-full' />

---

## Some Backend Languages and Frameworks
- C#
  - .Net
- [Golang](https://go.dev/)
  - [Gin](https://gin-gonic.com/)
- Java
  - [Spring](https://spring.io/)
- PHP
  - [Laravel](https://laravel.com/)
- Python
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Flask](https://flask.palletsprojects.com/en/2.2.x/)
  - [Django](https://www.djangoproject.com/)
- Node.js

---

## CRUD
|        | Backend       | Database |
| ------ | ------------- | -------- |
| Create | `POST`, `PUT` | `INSERT` |
| Read   | `GET`         | `SELECT` |
| Update | `PUT`         | `UPDATE` |
| Delete | `DELETE`      | `DELETE` |

> [Reference](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)

---
layout: two-cols
---

## [Poetry](https://python-poetry.org/)

- [Install](https://python-poetry.org/docs/#installation)
  - Install [pipx](https://github.com/pypa/pipx)

```bash
brew install pipx
pipx ensurepath
pipx install poetry
```
- Create Project

```bash
poetry new todolist-backend
poetry config virtualenvs.in-project true
poetry install
```


::right::

## FastAPI
- Install

```bash
poetry add "fastapi[all]"
```

- `todolist_backend/main.py`

```python
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
  return {"message": "Hello World"}
```

- uvicorn

```bash
uvicorn todolist_backend.main:app --reload
```

- API: [http://127.0.0.1:8000](http://127.0.0.1:8000.)
- API docs: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)
- API redoc: [http://127.0.0.1:8000/redoc](http://127.0.0.1:8000/redoc)

---

## URL
![](/mdn-url-all.png)
> [reference](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL)

## [Path Parameters](https://fastapi.tiangolo.com/tutorial/path-params/) - Get Todo by Id
```python
@app.get('/todo/{todo_id}')
async def get_todo(todo_id: str):
  return next((item for item in todos if item['id'] == todo_id), None)
```

## [Query Parameters](https://fastapi.tiangolo.com/tutorial/query-params/) - Get Todos with/without Custom States
```
http://127.0.0.1:8000/todo?done=false
```
```python
@app.get("/todo")
async def get_todos(done: bool | None = None):
  if done is not None:
    return list(filter(lambda item: item['done'] == done, todos))
  return todos
```

---

## [Request Body](https://fastapi.tiangolo.com/tutorial/body/)
- Define Model([pydantic](https://pydantic-docs.helpmanual.io/))

```python
class TodoItemBase(BaseModel):
  title: str
  description: str | None = None
  done: bool = False
```

- `POST` method - Create Todos
```python
@app.post('/todo')
async def create_todo(todo: TodoItemBase):
  todo = {'id': str(uuid4()), **todo.dict()}
  todos.append(todo)
  return todo
```

- `PUT` method - Update Todo
```python
@app.put('/todo/{todo_id}')
async def update_todo(todo_id: str, todo: TodoItemBase):
  for idx, item in enumerate(todos):
    if item['id'] == todo_id:
      todo = item | todo.dict()
      todos[idx] = todo
  return todo
```

---

## `DELETE` - Delete Todo

```python
@app.delete('/todo/{todo_id}')
async def delete_todo(todo_id: str):
  for idx, item in enumerate(todos):
    if item['id'] == todo_id:
      del todos[idx]
      return True

  return False
```

---

## [Middleware](https://fastapi.tiangolo.com/tutorial/middleware/)
- a function that works with every request before it is processed by any specific path operation
- also with every response before returning it.

### [CORS, Cross-Origin Resource Sharing](https://fastapi.tiangolo.com/tutorial/cors/)
refers to the situations when a frontend running in a browser has JavaScript code that communicates with a backend, and the backend is in a different "origin" than the frontend.
- origin
  - protocol: `http`, `https`
  - domain: `myapp.com`, `localhost`
  - port: `3000`, `5000`

### 如何避免 CORS?
- CORS Middleware
- Deploy frontend and backend in same origin

---

### CORS Middleware

```python
from fastapi.middleware.cors import CORSMiddleware

origins = [
    "http://localhost.tiangolo.com",
    "https://localhost.tiangolo.com",
    "http://localhost",
    "http://localhost:8080",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
```

---

## [Static Files](https://fastapi.tiangolo.com/tutorial/static-files/) - Deploy frontend and backend in same origin

```python
from fastapi.staticfiles import StaticFiles
app.mount("/static", StaticFiles(directory="static", html=True), name="static")
```

---

## [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch)

