
<%@ page import="com.btx.Bug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bug.label', default: 'Bug')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bug" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bug" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bug">
			
				<g:if test="${bugInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="bug.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${bugInstance?.product?.id}">${bugInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="bug.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bugInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugInstance?.severity}">
				<li class="fieldcontain">
					<span id="severity-label" class="property-label"><g:message code="bug.severity.label" default="Severity" /></span>
					
						<span class="property-value" aria-labelledby="severity-label"><g:link controller="severity" action="show" id="${bugInstance?.severity?.id}">${bugInstance?.severity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="bug.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${bugInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bugInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bugInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
