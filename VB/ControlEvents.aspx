<%@ Page Language="vb" AutoEventWireup="true" CodeFile="ControlEvents.aspx.vb" Inherits="ControlEvents" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
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
		function OnTextBoxInit(s, e) {
			//http://jqueryui.com/demos/autocomplete/
			//http://docs.jquery.com/UI/Position
			$(s.GetInputElement()).autocomplete({
				source: availableTags,
				position:
				{
					my: "left top",
					at: "left bottom",
					of: s.GetMainElement()
				},
				select: function (event, ui) {
				  s.SetValue(ui.item.value);
				}
			});
		}
	</script>
</head>
<body>
	<form id="mainForm" runat="server">
	<div>
		<dx:ASPxPageControl ID="pageControl" runat="server" ActiveTabIndex="0" EnableCallBacks="true">
			<TabPages>
				<dx:TabPage Text="Static TabPage">
					<ContentCollection>
						<dx:ContentControl runat="server">
							<b>Click "Dynamic TabPage" to create its content via callback</b>
						</dx:ContentControl>
					</ContentCollection>
				</dx:TabPage>
				<dx:TabPage Text="Dynamic TabPage">
					<ContentCollection>
						<dx:ContentControl runat="server">
							<b>Type in, for example, the "a" key to invoke the jQuery AutoComplete plugin</b>
							<br />
							<br />
							<dx:ASPxTextBox ID="textBox" runat="server" Width="170px">
								<ClientSideEvents Init="OnTextBoxInit" />
							</dx:ASPxTextBox>
						</dx:ContentControl>
					</ContentCollection>
				</dx:TabPage>
			</TabPages>
		</dx:ASPxPageControl>
	</div>
	</form>
</body>
</html>