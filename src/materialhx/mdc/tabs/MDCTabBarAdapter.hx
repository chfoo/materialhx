package materialhx.mdc.tabs;


import js.html.EventListener;


interface MDCTabBarAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function bindOnMDCTabSelectedEvent():Void;
    function unbindOnMDCTabSelectedEvent():Void;
    function registerResizeHandler(handler:EventListener):Void;
    function deregisterResizeHandler(handler:EventListener):Void;
    function getOffsetWidth():Float;
    function setStyleForIndicator(propertyName:String, value:String):Void;
    function getOffsetWidthForIndicator():Float;
    function notifyChange(evtData:Any):Void;
    function getNumberOfTabs():Int;
    function getActiveTab():MDCTab;
    function isTabActiveAtIndex(index:number):Bool;
    function setTabActiveAtIndex(index:number):Void;
    function isDefaultPreventedOnClickForTabAtIndex(index:Int):Bool;
    function setPreventDefaultOnClickForTabAtIndex(index:Int, preventDefaultOnClick:Bool):Void;
    function measureTabAtIndex(index:number):Void;
    function getComputedWidthForTabAtIndex(index:number):number;
    function getComputedLeftForTabAtIndex(index:number):number;
}
