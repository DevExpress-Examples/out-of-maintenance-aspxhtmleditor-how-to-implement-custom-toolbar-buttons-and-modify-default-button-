<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="HtmlEditor.aspx.vb" Inherits="DXWebApplication1.HtmlEditor" %>
<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--region #Markup-->
        <script type="text/javascript">
        var MailSignature = '<p>Thanks,</p><p> Max Bing</p>';
        function onCustomCommand(commandName) {
            switch (commandName) {
                case ('clear'):
                    HtmlEditor.ExecuteCommand(ASPxClientCommandConsts.SELECT_ALL, null);
                    HtmlEditor.ExecuteCommand(ASPxClientCommandConsts.DELETE_COMMAND, null);
                    break;
                case ('addSignature'):
                    var HtmlWithSignature = HtmlEditor.GetHtml() + MailSignature;
                    HtmlEditor.SetHtml(HtmlWithSignature);
                    break;
            }
        }
        function onCommandExecuted(e) {
            if (e.commandName == 'insertorderedlist') {
                var html = HtmlEditor.GetHtml();
                html = html.replace(/<ol>/g, "<ol type='I'>");
                HtmlEditor.SetHtml(html);
            }
        }
    </script>

        <dx:ASPxHtmlEditor ID="DemoHtmlEditor" ClientInstanceName="HtmlEditor" runat="server">
            <Toolbars>
                <dx:HtmlEditorToolbar>
                    <Items>
                        <dx:ToolbarUndoButton>
                        </dx:ToolbarUndoButton>
                        <dx:ToolbarRedoButton>
                        </dx:ToolbarRedoButton>
                        <dx:ToolbarBoldButton BeginGroup="True">
                        </dx:ToolbarBoldButton>
                        <dx:ToolbarItalicButton>
                        </dx:ToolbarItalicButton>
                        <dx:ToolbarUnderlineButton>
                        </dx:ToolbarUnderlineButton>
                        <dx:ToolbarStrikethroughButton>
                        </dx:ToolbarStrikethroughButton>
                        <dx:ToolbarInsertOrderedListButton BeginGroup="True">
                        </dx:ToolbarInsertOrderedListButton>
                        <dx:ToolbarInsertUnorderedListButton>
                        </dx:ToolbarInsertUnorderedListButton>
                    </Items>
                </dx:HtmlEditorToolbar>
                <dx:HtmlEditorToolbar>
                    <Items>
                        <dx:CustomToolbarButton CommandName="addSignature" Text="Add Signature" ToolTip="Add Signature">
                        </dx:CustomToolbarButton>
                        <dx:CustomToolbarButton CommandName="clear" Text="Clear" ToolTip="Clear">
                        </dx:CustomToolbarButton>
                    </Items>
                </dx:HtmlEditorToolbar>
            </Toolbars>
            <Shortcuts>
                <dx:HtmlEditorShortcut ActionName="addSignature" ActionType="ExecuteCommand" Shortcut="Ctrl+Shift+I" />
                <dx:HtmlEditorShortcut ActionName="clear" ActionType="ExecuteCommand" Shortcut="Ctrl+Shift+D" />
            </Shortcuts>
            <ClientSideEvents CommandExecuted="function(s, e) { onCommandExecuted(e); }"
                CustomCommand="function(s, e) { onCustomCommand(e.commandName); }">
            </ClientSideEvents>
        </dx:ASPxHtmlEditor>
        <!--endregion #Markup-->
    </div>
    </form>
</body>
</html>