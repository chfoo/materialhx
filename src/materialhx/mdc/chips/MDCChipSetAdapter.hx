package materialhx.mdc.chips;

import js.html.Element;
import js.html.EventListener;


interface MDCChipSetAdapter {
    function hasClass(className:String):Bool;
    function registerInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evtType:String, handler:EventListener):Void;
    function appendChip(text:String, leadingIcon:Element, trailingIcon:Element):Element;
    function removeChip(chip:MDCChip):Void;
}
