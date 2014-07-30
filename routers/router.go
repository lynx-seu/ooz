package routers

import (
	"html/template"
	"net/http"
	"ooz/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.HomeController{})
	beego.Router("/login", &controllers.LoginCtrl{})

	/* 404 */
	beego.Errorhandler("404", func(w http.ResponseWriter, r *http.Request) {
		t, _ := template.New("404").ParseFiles(beego.ViewsPath + "/404.html")
		data := make(map[string]interface{})
		data["content"] = "page not found"
		t.Execute(w, data)
	})
}
