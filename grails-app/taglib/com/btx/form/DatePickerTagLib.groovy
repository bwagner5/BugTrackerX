package com.btx.form

class DatePickerTagLib {
    //static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
    static namespace = 'form'

    def DateTimePicker = {attrs, body ->
        def out = out
        def name = attrs.name
        def id = attrs.id ?: name

        //Create date text field and supporting hidden text fields needed by Grails data binding
        out << "<input type=\"text\" class=\"datetimepicker form-control\" name=\"${name}_jq\" id=\"${id}_jq\" />\n"
        out << "<input type=\"hidden\" name=\"${name}\" id=\"${id}\" />\n"

        //Code to parse selected date into hidden fields required by Grails data binding
        out << "<script type=\"text/javascript\"> \$(document).ready(function(){\$(\"#${name}_jq\").datetimepicker({onClose: function(dateText, inst) {"
        out << "var date = new Date(dateText);"
        out << "\$(\"#${name}\").attr(\"value\", date.getFullYear() + \"/\" + date.getMonth() + \"/\" + date.getDate() + \" \" + date.getHours() + \":\" + date.getMinutes());"
        out << "}"
        out << "});"
        out << "})</script>"
    }
}
