<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="layout" content="main"/>
        <meta name="sub" content="bugcreate"/>
        <title>Bug Tracker X</title>
    </head>

    <body>
        <div id="layoutBody" class="col-md-8 col-md-offset-2">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bugInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${bugInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form role="form" url="[resource:bugInstance, controller:'bug', action:'save']" >
                    <g:render template="/bug/form" />
                    <g:submitButton name="create" class="btn btn-primary btn-lg" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </g:form>
        </div>
    </body>
</html>