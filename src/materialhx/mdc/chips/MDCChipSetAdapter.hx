package materialhx.mdc.chips;

import js.html.EventListener;


interface MDCChipSetAdapter {
    function hasClass(className:String):Bool;
    function registerInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evtType:String, handler:EventListener):Void;
    function removeChip(chip:MDCChip):Void;
}
