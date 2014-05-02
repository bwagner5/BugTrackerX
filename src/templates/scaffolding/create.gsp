<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        <meta name="sub" content="${domainClass.propertyName}create"/>
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <r:require module="dateTimePicker" />
	</head>
	<body>
        <div id="create-${domainClass.propertyName}" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${${propertyName}}">
            <ul class="errors" role="alert">
                <g:eachError bean="\${${propertyName}}" var="error">
                <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
                <g:form class="form-horizontal" role="form" url="[resource:${propertyName}, controller: '${domainClass.propertyName}', action:'save']" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                        <g:render template="/${domainClass.propertyName}/form"/>
                        <g:submitButton name="create" class="btn btn-primary btn-lg" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
                </g:form>
        </div>
	</body>
</html>
