<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><g:layoutTitle default="Bug Tracker X"/></title>
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <g:javascript src="html5shiv.js" />
          <g:javascript src="respond.min.js" />
        <![endif]-->
        <g:layoutHead/>
        <r:require module="core"/>
        <r:require module="dateTimePicker" />
        <g:javascript library="jquery" plugin="jquery"/>
        <r:layoutResources />
    </head>

    <body>

        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${createLink(uri: '/')}"><i class="fa fa-bolt"></i></a>
                </div>
                <div class="navbar-collapse collapse">
                    <div class="navbar-left">
                        <b>Client:</b> First Energy Nuclear Operating Company <br />
                        <b>User:</b> Vern Patton
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="${(pageProperty(name:'meta.sub') =='bugcreate')?'active':''}"><g:link controller="bug" action="create">Report Bug</g:link></li>
                        <li class="${(pageProperty(name:'meta.sub') =='buglist')?'active':''}"><g:link controller="bug" action="index">View Bugs</g:link></li>
                        <li class="${(pageProperty(name:'meta.sub') =='about')?'active':''}"><a href="#about">About</a></li>
                        <li class="${(pageProperty(name:'meta.sub') =='contact')?'active':''}"><a href="#contact">Contact</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>

        <div id="hello">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 centered">
                        <h1>Bug Tracker X</h1>
                        <h2>REPORTING BUGS MADE SIMPLE</h2>
                    </div><!-- /col-lg-8 -->
                </div><!-- /row -->
            </div> <!-- /container -->
        </div><!-- /hello -->

         <g:layoutBody/>

        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
        <r:layoutResources />
    </body>

</html>
