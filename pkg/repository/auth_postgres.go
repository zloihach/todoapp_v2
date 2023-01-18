package repository

import (
	"fmt"
	"github.com/jmoiron/sqlx"
	"todoapp"
)

type AuthPostgres struct {
	db *sqlx.DB
}

func NewAuthPostgres(db *sqlx.DB) *AuthPostgres {
	return &AuthPostgres{db: db}
}

func (r *AuthPostgres) CreateUser(user todoapp.User) (int, error) {
	var id int
	querry := fmt.Sprintf("INSERT INTO%s (username, password) values ($1, $2) RETURNING id", usersTable)
	row := r.db.QueryRow(querry, user.Name, user.Username, user.Password)
	if err := row.Scan(&id); err != nil {
		return 0, err
	}
	return id, nil
}
