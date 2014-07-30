                {{if .IsLogin}}
                <div class="header">
                    <hgroup>
                    <h1 class="brand-title">{{.Usr}}的博客</h1>
                    <h2 class="brand-tagline">{{.PersonalSignature}}</h2>
                    </hgroup>
                    <nav class="nav">
                    <ul class="nav-list">
                        <li class="nav-item">
                        <a class="pure-button" href="/">退出</a>
                        </li>
                    </ul>
                    </nav>
                </div>
                {{else}}
                <div class="header">
                    <hgroup>
                    <h1 class="brand-title">博客系统</h1>
                    <h2 class="brand-tagline">请先注册,登陆</h2>
                    </hgroup>
                    <nav class="nav">
                    <ul class="nav-list">
                        <li class="nav-item">
                        <a class="pure-button" href="/join">注册</a>
                        </li>
                        <li class="nav-item">
                        <a class="pure-button" data-toggle="modal" href="#login">登陆</a>
                        </li>
                    </ul>
                    </nav>
                </div>
                {{end}}
