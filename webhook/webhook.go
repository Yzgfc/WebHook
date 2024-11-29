package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os/exec"
	"strings"
)

type PushEvent struct {
	Ref        string `json:"ref"`
	HeadCommit struct {
		Message string `json:"message"`
	} `json:"head_commit"`
}

func main() {
	http.HandleFunc("/webhook", func(w http.ResponseWriter, r *http.Request) {
		if r.Method != "POST" {
			http.Error(w, "Method not allowed", http.StatusMethodNotAllowed)
			return
		}

		var event PushEvent
		if err := json.NewDecoder(r.Body).Decode(&event); err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}

		// 检查是否是 main 分支的推送
		if !strings.HasSuffix(event.Ref, "main") {
			log.Println("Commit is not main branch, skipping deployment")
			fmt.Fprintf(w, "Commit is not main branch, skipping deployment")
			return
		}

		// 检查提交信息是否包含 @deploy
		if !strings.Contains(event.HeadCommit.Message, "@deploy") {
			log.Println("Commit message doesn't contain @deploy, skipping deployment")
			fmt.Fprintf(w, "Commit message doesn't contain @deploy, skipping deployment")
			return
		}

		// 执行部署脚本
		cmd := exec.Command("/bin/bash", "/home/admin/webhook/deploy.sh")
		output, err := cmd.CombinedOutput() // 获取命令输出
		if err != nil {
			log.Printf("部署错误: %v, 输出: %s", err, string(output))
			http.Error(w, fmt.Sprintf("部署失败: %v, 输出: %s", err, string(output)), http.StatusInternalServerError)
			return
		}

		fmt.Fprintf(w, "部署成功")
	})

	log.Fatal(http.ListenAndServe(":9000", nil))
}
