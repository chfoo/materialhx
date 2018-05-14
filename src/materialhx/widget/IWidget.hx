package materialhx.widget;

import js.html.Element;


/**
    Wrapper of web components that comprise a unit in a user interface.
**/
interface IWidget {
    /**
        Root HTML element of the web component.
    **/
    public var element(get, never):Element;
}
