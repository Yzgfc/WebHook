package main

import (
	"sort"
	"strings"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

type SortRequest struct {
	Text string `json:"text"`
}

type SortResponse struct {
	Sorted string `json:"sorted"`
}

func main() {
	r := gin.Default()

	// 配置 CORS
	r.Use(cors.Default())

	r.POST("/sort", func(c *gin.Context) {
		var req SortRequest
		if err := c.BindJSON(&req); err != nil {
			c.JSON(400, gin.H{"error": "无效的请求数据"})
			return
		}

		// 将字符串转换为字符切片并排序
		chars := strings.Split(req.Text, "")
		sort.Strings(chars)
		sortedText := strings.Join(chars, "")

		c.JSON(200, SortResponse{
			Sorted: sortedText,
		})
	})

	r.Run(":8080")
}
