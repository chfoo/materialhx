materialhx
==========

materialhx is a extern interface, element builder, and wrapper library for [Material Design Components (Web)](https://github.com/material-components/material-components-web) for the Haxe programming language.


Quick Start
-----------

Install the library using:

        haxelib install materialhx


Include vanilla MDC styles and scripts into your HTML page:

```html
<link href="https://unpkg.com/material-components-web@0.35.1/dist/material-components-web.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script async src="https://unpkg.com/material-components-web@0.35.1/dist/material-components-web.js" type="text/javascript"></script>
```

Then include your Haxe JS output:

```html
<script defer src="my_program.js" type="text/javascript"></script>
```

In your entry point, wait for MDC to load and then execute your code. For example:

```haxe
if (Browser.document.readyState == "complete") {
    doThings();
} else {
    Browser.document.addEventListener("readystatechange", doThings);
}
```

### Using the extern interfaces

You can initialize components using existing HTML elements with the extern interfaces. They are are located in the `materialhx.mdc` package.

This example adds a ripple to a button element:

```haxe
import materialhx.mdc.ripple.MDCRipple;

// [...]

var button = Browser.document.createElement("button");
MDCRipple.attachTo(button);
```


### HTML element builders and CSS class names

To help build and style elements programmatically, element builders are located in `materialhx.html` and style class names in `materialhx.css`.

This example shows building a button and styling it:

```haxe
import materialhx.css.ButtonStyle.ButtonModifier;
import materialhx.html.ButtonBuilder;

// [...]

var button = ButtonBuilder.button();
button.classList.add(ButtonModifier.Raised);
```

### Component wrapper widgets

The library also provides wrappers for the HTML elements and components called widgets. Widgets are tied to hierarchy of the DOM tree and represent units in a user interface. They are found in the `materialhx.widget` package.

This example creates a dialog, shows it, waits for a response, and cleans up the dialog:

```haxe
import materialhx.mdc.dialog.MDCDialog;
import materialhx.widget.ContainerWidget;
import materialhx.widget.Dialog;

// [...]

var root = new ContainerWidget(Browser.document.body);
var dialog = new Dialog();

root.push(dialog);

dialog.setText("Discard draft?", "The draft will be deleted.");
dialog.setButtonText("Discard");

dialog.element.addEventListener(MDCDialogEvent.Accept, function () {
    storage.deleteDraft();
    dialog.dispose();
    root.remove(dialog);
});

dialog.show();
```

### Learning more

To see more example usage, see the demo project in `test/materialhx/Demo.hx`. The demo can be built using `haxe demo.hxml`.


Widget interoperability with other frameworks
---------------------------------------------

All the widgets in this library subclass from a generic `Widget` class. The `Widget` implements `IWidgetNode` which closely resembles a Haxe array interface to the DOM.

For widgets in this library to accept external widgets, external widgets need to implement `IWidget` which only requires a HTML element to be exposed.

Other icons, besides Material icons, can be used by implementing `IIcon`.
