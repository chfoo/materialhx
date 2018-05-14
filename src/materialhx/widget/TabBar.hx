package materialhx.widget;

import materialhx.mdc.tabs.MDCTabBar;
import materialhx.html.TabsBuilder;


enum TabBarType {
    Text;
    Icons;
    IconsAndText;
}

class TabBar extends Widget implements IDisposable {
    public var component(default, null):MDCTabBar;
    public var activeTabIndex(get, set):Int;

    public function new(tabBarType:TabBarType, tabs:Array<Tab>,
            deferComponent:Bool = false) {
        var element;

        switch (tabBarType) {
            case TabBarType.Text:
                element = TabsBuilder.tabBar(true, false);
            case TabBarType.Icons:
                element = TabsBuilder.tabBar(false, true);
            case TabBarType.IconsAndText:
                element = TabsBuilder.tabBar(true, true);
        }

        super(element);

        for (tab in tabs) {
            push(tab);
        }

        if (!deferComponent) {
            component = new MDCTabBar(_element);
        }
    }

    function get_activeTabIndex():Int {
        return component.activateTabIndex;
    }

    function set_activeTabIndex(value:Int):Int {
        return component.activateTabIndex = value;
    }

    public function layout() {
        component.layout();
    }

    @:allow(materialhx.widget.TabBarScroller)
    function setComponent(component:MDCTabBar) {
        this.component = component;
    }

    public function dispose() {
        component.destroy();
    }
}
