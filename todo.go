package todoapp

type TodoList struct {
	Id    int    `json:"id"`
	Title string `json:"title"`
}

type UserList struct {
	Id         int
	UserId     int
	TodoListId int
}

type TodoItem struct {
	Id          int    `json:"id"`
	Title       string `json:"title"`
	Description string `json:"description"`
	Done        bool   `json:"done"`
}
