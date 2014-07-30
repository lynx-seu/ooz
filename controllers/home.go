package controllers

import (
	"github.com/astaxie/beego"
)

type HomeController struct {
	beego.Controller
}

func (this *HomeController) Get() {
	this.Data["Title"] = "博客主页"
	this.Data["IsLogin"] = false
	this.TplNames = "index.html"
}

func (this *HomeController) Post() {
	usr := this.Ctx.Input.Query("usr")
	passwd := this.Ctx.Input.Query("passwd")
	remember := this.Ctx.Input.Query("remember")

	this.Ctx.WriteString(usr + " " + passwd + " " + remember)
}
