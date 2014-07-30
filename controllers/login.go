package controllers

import (
	"github.com/astaxie/beego"
)

type LoginCtrl struct {
	beego.Controller
}

func (this *LoginCtrl) Get() {
	this.Data["Title"] = "登陆"
	this.TplNames = "login.html"
}

func (this *LoginCtrl) Post() {

}
