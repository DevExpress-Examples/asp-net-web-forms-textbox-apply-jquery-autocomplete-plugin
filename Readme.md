<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128531050/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3325)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[ControlEvents.aspx](./CS/ControlEvents.aspx) (VB: [ControlEvents.aspx](./VB/ControlEvents.aspx))**
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [GlobalEvents.aspx](./CS/GlobalEvents.aspx) (VB: [GlobalEvents.aspx](./VB/GlobalEvents.aspx))
* [AutoCompleteStyles.css](./CS/Styles/AutoCompleteStyles.css)
<!-- default file list end -->
# ASPxTextBox - How to attach the jQuery AutoComplete plugin
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3325/)**
<!-- run online end -->


<p>This example illustrates how to attach the jQuery AutoComplete plugin to the ASPxTextBox editor.</p><p>Usually when it is necessary to attach jQuery selectors to any existing HTML content, it is recommended to use the <a href="http://api.jquery.com/ready/"><u>$(document).ready</u></a> function that can be employed for handling the state when DOM is fully loaded.</p><p>When using DevExpress ASP.NET Controls, it is recommended to handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGlobalEventsScriptsASPxClientGlobalEvents_ControlsInitializedtopic"><u>ASPxClientGlobalEvents.ControlsInitialized</u></a> event that is raised after client object models of all DevExpress web controls contained within the page have been initialized or the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientControl_Inittopic"><u>ASPxClientControl.Init</u></a> event (rather than the use of the jQuery <strong>$(document).ready</strong> function) of the required DevExpress ASP.NET control to ensure that a corresponding client-side control's programmatic object is initialized.</p><p>GlobalEvents.aspx:<br />
This example illustrates how to use an invisible ASPxGlobalEvents component to initialize the required DevExpress ASP.NET control on the client side:<br />
To get access to the client-side programmatic object of a particular DevExpress ASP.NET control, use the ClientInstanceName property (refer to the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument4223"><u>Client-Side API Availability for a Web Control</u></a> topic in our documentation to learn more about the client-side API availability).</p><p>ControlEvents.aspx:<br />
This example demonstrates how to use the control's client-side Init event where the client-side control's programmatic object is available directly via the "<strong>s</strong>" (sender) object (refer to the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument9448"><u>Client-Side Events</u></a> topic in our documentation to learn more about common concepts of how to use client-side events of the DevExpress ASP.NET Controls).</p>

<br/>


