package materialhx.widget;

import materialhx.html.MenuBuilder;


class MenuListItem extends ListItem {
    public function new(label:String = "") {
        super(label);

        MenuBuilder.upgradeListItem(_element);
    }
}
