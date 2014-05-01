
<%@ page import="com.btx.Bug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        <meta name="sub" content="buglist"/>
		<g:set var="entityName" value="${message(code: 'bug.label', default: 'Bug')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-bug" class="content scaffold-list" role="main">
            <div id="green">
                <div class="container">
                    <div class="row">
                        <h1 style="color: #ffffff;"><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                    </div>
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table">
                            <thead>
                                    <tr>
                                    
                                        <th><g:message code="bug.product.label" default="Product" /></th>
                                    
                                        <g:sortableColumn property="description" title="${message(code: 'bug.description.label', default: 'Description')}" />
                                    
                                        <g:sortableColumn property="severity" title="${message(code: 'bug.severity.label', default: 'Severity')}" />
                                    
                                        <g:sortableColumn property="date" title="${message(code: 'bug.date.label', default: 'Date')}" />
                                    
                                    </tr>
                                </thead>
                                <tbody>
                                <g:each in="${bugInstanceList}" status="i" var="bugInstance">
                                    <tr onclick='document.location = "${createLink(controller: Bug, action: "show", id: bugInstance.id)}"' style="cursor: pointer">
                                    
                                        <td><g:link action="show" id="${bugInstance.id}">${fieldValue(bean: bugInstance, field: "product")}</g:link></td>
                                    
                                        <td>${fieldValue(bean: bugInstance, field: "description")}</td>
                                    
                                        <td>${fieldValue(bean: bugInstance, field: "severity")}</td>
                                    
                                        <td><g:formatDate date="${bugInstance.date}" /></td>
                                    
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${bugInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
