package materialhx.widget;

import materialhx.html.MenuBuilder;


class MenuList extends List {
    public function new() {
        super();

        MenuBuilder.upgradeList(_element);
    }
}
