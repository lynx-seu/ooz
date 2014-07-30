<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A layout example that shows off a blog page with a list of posts.">
        <title>{{.Title}}</title>

        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
        {{str2html "<!--[if lte IE 8]>"}}
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-old-ie-min.css">
        {{str2html "<![endif]-->"}}
        {{str2html "<!--[if gt IE 8]><!-->"}}
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
        {{str2html "<!--<![endif]-->"}}

        {{str2html "<!--[if lte IE 8]>"}}
        <link rel="stylesheet" href="/static/css/layouts/blog-old-ie.css">
        {{str2html "<![endif]-->"}}
        {{str2html "<!--[if gt IE 8]><!-->"}}
        <link rel="stylesheet" href="/static/css/layouts/blog.css">
        {{str2html "<!--<![endif]-->"}}

        <link rel="stylesheet" href="/static/css/bootstrap/modal.css">
    </head>
    <body>
        <div id="layout" class="pure-g-r">
            <div class="sidebar pure-u-1 pure-u-md-1-5">
                {{template "tpl/nav.tpl" .}}
            </div>
            <div class="content pure-u-1 pure-u-md-4-5">
                <div>
                    {{template "body" .}}
                    {{template "tpl/footer.tpl" .}}
                </div>
            </div>
        </div>

        {{template "tpl/login.tpl" .}}
    </body>
</html>
