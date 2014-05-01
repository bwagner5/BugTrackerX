<%@ page import="com.btx.Bug" %>



<div class="form-group ${hasErrors(bean: bugInstance, field: 'product', 'has-error')} required">
	<label for="product">
		<g:message code="bug.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${com.btx.Product.list()}" optionKey="id" required="" value="${bugInstance?.product?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: bugInstance, field: 'description', 'has-error')} required">
	<label for="description">
		<g:message code="bug.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="description" cols="40" rows="5" maxlength="4000" required="" value="${bugInstance?.description}"/>

</div>

<div class="form-group ${hasErrors(bean: bugInstance, field: 'severity', 'has-error')} required">
	<label for="severity">
		<g:message code="bug.severity.label" default="Severity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="severity" required="" value="${bugInstance?.severity}"/>

</div>

<div class="form-group ${hasErrors(bean: bugInstance, field: 'date', 'has-error')} required">
	<label for="date">
		<g:message code="bug.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="minute"  value="${bugInstance?.date}"  />

</div>

