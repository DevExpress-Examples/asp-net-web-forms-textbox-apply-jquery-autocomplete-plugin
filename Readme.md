<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128531050/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3325)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Text Box for ASP.NET Web Forms - How to apply the jQuery AutoComplete plugin to an editor

This example demonstrates how to apply the jQuery `AutoComplete` plugin to a text box editor.

![AutoComplete plugin](AutocompletePlugin.png)

## Overview

To apply jQuery selectors to a text box editor, use one of the following approaches:

* Add a [ASPxGlobalEvents](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGlobalEvents) component to the page and handle its client-side [ControlsInitialized](https://docs.devexpress.com/AspNet/js-ASPxClientGlobalEvents.ControlsInitialized) event to initialize the text box editor. To access the editor, use its [ClientInstanceName](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxEditBase.ClientInstanceName) property.

    ```js
    function OnControlsInitialized(s, e) {
        $(txt.GetInputElement()).autocomplete({
            source: availableTags,
            position: {
                my: "left top",
                at: "left bottom",
                of: txt.GetMainElement()
            },
            select: function (event, ui) {
                txt.SetValue(ui.item.value);
            }
        });
    }
    ```

* Handle the editor's client-side `Init` event and use the `s` parameter to get the corresponding the client object.

    ```js
    function OnTextBoxInit(s, e) {
        $(s.GetInputElement()).autocomplete({
            source: availableTags,
            position: {
                my: "left top",
                at: "left bottom",
                of: s.GetMainElement()
            },
            select: function (event, ui) {
                s.SetValue(ui.item.value);
            }
        });
    }
    ```

## Files to Review

* [ControlEvents.aspx](./CS/ControlEvents.aspx) (VB: [ControlEvents.aspx](./VB/ControlEvents.aspx))
* [GlobalEvents.aspx](./CS/GlobalEvents.aspx) (VB: [GlobalEvents.aspx](./VB/GlobalEvents.aspx))
* [AutoCompleteStyles.css](./CS/Styles/AutoCompleteStyles.css)

## Documentation

* [jQuery - AutoComplete](https://jqueryui.com/autocomplete/)
