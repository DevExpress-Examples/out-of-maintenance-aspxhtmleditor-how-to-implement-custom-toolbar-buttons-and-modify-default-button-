# ASPxHtmlEditor - How to implement custom toolbar buttons and modify default button functionality


<p><a href="http://help.devexpress.com/#AspNet/clsDevExpressWebASPxHtmlEditorASPxHtmlEditortopic">ASPxHtmlEditor</a> allows you to provide custom toolbar buttons and modify the functionality of default buttons.</p>
<p>In this example, two custom buttons are created: <strong>Clear</strong> and <strong>Add Signature</strong>. When a button is clicked, the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorScriptsASPxClientHtmlEditor_CustomCommandtopic">CustomCommand</a> event is triggered. In the event handler, the default <strong>select all</strong> and <strong>delete </strong>commands are executed using the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorScriptsASPxClientHtmlEditor_ExecuteCommandtopic">ExecuteCommand</a> method.</p>
<p>Additionally, we have modified the functionality of the default <strong>insert ordered list</strong> command. In the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorScriptsASPxClientHtmlEditor_CommandExecutedtopic">CommandExecuted</a> event handler, which is triggered after the command is processed, we change the type of ordered list markers to Roman numerals.</p>

<br/>


