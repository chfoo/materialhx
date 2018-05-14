package materialhx.widget;

import materialhx.html.TabsBuilder;
import materialhx.mdc.tabs.MDCTabBarScroller;


class TabBarScroller extends Widget implements IDisposable {
    public var component(default, null):MDCTabBarScroller;
    public var tabBar(default, null):TabBar;

    public function new(tabBar:TabBar, backIcon:IIcon, forwardIcon:IIcon) {
        super(TabsBuilder.tabBarScroller());

        _element.appendChild(TabsBuilder.tabScrollerBack(backIcon.element));
        _element.appendChild(TabsBuilder.tabScrollerTabBar(tabBar.element));
        _element.appendChild(TabsBuilder.tabScrollerForward(forwardIcon.element));

        this.tabBar = tabBar;
        component = new MDCTabBarScroller(_element);

        tabBar.setComponent(component.tabBar);
    }

    public function layout() {
        component.layout();
    }

    public function dispose() {
        component.destroy();
    }
}
