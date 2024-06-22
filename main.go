package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func getData(ctx *gin.Context) {
	ctx.JSON(http.StatusOK, gin.H{"message": "ok"})
}
func main() {
	r := gin.Default()
	r.GET("/", getData)
	err := r.Run(":8000")
	if err != nil {
		return
	}
}
