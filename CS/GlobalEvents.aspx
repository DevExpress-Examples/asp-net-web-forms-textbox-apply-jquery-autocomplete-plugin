<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GlobalEvents.aspx.cs" Inherits="GlobalEvents" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGlobalEvents" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="Styles/AutoCompleteStyles.css" />
    <script src="Scripts/jquery-1.6.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var availableTags = [
			    "ActionScript",
			    "AppleScript",
			    "Asp",
			    "BASIC",
			    "C",
			    "C++",
			    "Clojure",
			    "COBOL",
			    "ColdFusion",
			    "Erlang",
			    "Fortran",
			    "Groovy",
			    "Haskell",
			    "Java",
			    "JavaScript",
			    "Lisp",
			    "Perl",
			    "PHP",
			    "Python",
			    "Ruby",
			    "Scala",
			    "Scheme"
		    ];
        function OnControlsInitialized(s, e) {
            //http://jqueryui.com/demos/autocomplete/
            //http://docs.jquery.com/UI/Position
            $(txt.GetInputElement()).autocomplete({
                source: availableTags,
                position:
                {
                    my: "left top",
                    at: "left bottom",
                    of: txt.GetMainElement()
                },
                select: function (event, ui) {
                  txt.SetValue(ui.item.value);
                }
            });
        }
    </script>

</head>
<body>
    <form id="mainForm" runat="server">
    <div>
        <b>Type in, for example, the "a" key to invoke the jQuery AutoComplete plugin</b>
        <br />
        <br />
        <dx:ASPxTextBox ID="textBox" runat="server" ClientInstanceName="txt" Width="170px">
        </dx:ASPxTextBox>
        <dx:ASPxGlobalEvents ID="globalEvents" runat="server">
            <ClientSideEvents ControlsInitialized="OnControlsInitialized" />
        </dx:ASPxGlobalEvents>
    </div>
    </form>
</body>
</html>