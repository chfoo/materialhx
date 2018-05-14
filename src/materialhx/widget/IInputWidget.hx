package materialhx.widget;

import js.html.Element;

/**
    A widget that wraps an user input HTML element.
**/
interface IInputWidget extends IWidget {
    var inputElement(get, never):Element;
}
