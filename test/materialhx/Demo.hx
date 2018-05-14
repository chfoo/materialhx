package materialhx;

import js.Browser;
import js.html.Element;
import js.html.Event;
import materialhx.css.ButtonStyle.ButtonModifier;
import materialhx.css.CardStyle.CardMediaModifier;
import materialhx.css.ChipStyle.ChipSetModifier;
import materialhx.css.ListStyle.ListModifier;
import materialhx.css.TextFieldStyle.TextFieldModifier;
import materialhx.css.TopAppBarStyle.TopAppBarAdjustModifier;
import materialhx.css.TopAppBarStyle.TopAppBarModifier;
import materialhx.mdc.topappbar.MDCTopAppBar.MDCTopAppBarEvent;
import materialhx.widget.Button;
import materialhx.widget.Card;
import materialhx.widget.Checkbox;
import materialhx.widget.Chip;
import materialhx.widget.ChipSet;
import materialhx.widget.ContainerWidget;
import materialhx.widget.Dialog;
import materialhx.widget.Drawer;
import materialhx.widget.FAB;
import materialhx.widget.FormField;
import materialhx.widget.Icon;
import materialhx.widget.IconToggle;
import materialhx.widget.ImageList;
import materialhx.widget.ImageListItem;
import materialhx.widget.IWidget;
import materialhx.widget.LayoutGrid;
import materialhx.widget.LayoutGridCell;
import materialhx.widget.LinearProgress;
import materialhx.widget.List;
import materialhx.widget.ListDivider;
import materialhx.widget.ListGroup;
import materialhx.widget.ListGroupSubheader;
import materialhx.widget.ListItem;
import materialhx.widget.Menu;
import materialhx.widget.MenuListItem;
import materialhx.widget.PermanentDrawer;
import materialhx.widget.PersistentDrawer;
import materialhx.widget.RadioButton;
import materialhx.widget.SelectMenu;
import materialhx.widget.SelectMenuOption;
import materialhx.widget.Slider;
import materialhx.widget.Snackbar;
import materialhx.widget.Switch;
import materialhx.widget.Tab;
import materialhx.widget.TabBar;
import materialhx.widget.TabBarScroller;
import materialhx.widget.TemporaryDrawer;
import materialhx.widget.TextField;
import materialhx.widget.TextFieldHelperText;
import materialhx.widget.TextFieldIcon;
import materialhx.widget.TextFieldTextArea;
import materialhx.widget.TopAppBar;
import materialhx.widget.TopAppBarAdjust;
import materialhx.widget.Widget;


class Demo {
    var rootElement:Element;
    var rootWidget:ContainerWidget;
    var debugMessageContainer:Element;
    var drawerContainerWidget:ContainerWidget;
    var topAppBarContainerWidget:ContainerWidget;
    var drawer:Drawer;

    public function new() {
    }

    public static function main() {
        var demo = new Demo();
        demo.run();
    }

    public function run() {
        switch (Browser.document.readyState) {
            case "interactive":
                runInteractive();
            case "complete":
                runInteractive();
                runLoaded();
        }

        Browser.document.addEventListener("readystatechange",
            readyStateChangeHandler);
    }

    function readyStateChangeHandler(event: Event) {
        switch (Browser.document.readyState) {
            case "interactive":
                runInteractive();
            case "complete":
                runLoaded();
        }
    }

    function runInteractive() {
        rootElement = Browser.document.body;
        rootWidget = new ContainerWidget(rootElement);
        debugMessageContainer = Browser.document.createElement("div");
        debugMessageContainer.textContent = "Loading";
    }

    function runLoaded() {
        debugMessageContainer.textContent = "";
        checkLoaded();

        drawerContainerWidget = new ContainerWidget();
        rootWidget.push(drawerContainerWidget);

        topAppBarContainerWidget = new ContainerWidget();
        rootWidget.push(topAppBarContainerWidget);

        addButton();
        addFAB();
        addIconToggle();

        addCard();
        addChips();
        addDialog();
        addDrawer();
        addImageList();

        addCheckbox();
        addRadioButton();
        addSelectMenu();
        addSlider();
        addSwitch();
        addTextField();

        addLayoutGrid();
        addLinearProgress();
        addList();
        addMenu();
        addSnackbar();
        addTabs();
        addTopAppBar();
    }

    function checkLoaded() {
        if (!Reflect.hasField(Browser.window, "mdc")) {
            var errorMsg = "MDC failed to load.";
            var errorElement = Browser.document.createElement("strong");
            errorElement.textContent = errorMsg;

            Browser.console.error(errorMsg);
            debugMessageContainer.appendChild(errorElement);
        }
    }

    function addLabeledWidget(label:String, widget:IWidget) {
        var container = new ContainerWidget(
            Browser.document.createElement("figure"));
        rootWidget.push(container);

        var labelWidget = new ContainerWidget(
            Browser.document.createElement("figcaption"));
        labelWidget.element.textContent = label;
        container.push(labelWidget);
        container.push(widget);
    }

    function addButton() {
        var container = new ContainerWidget();

        var button = new Button("Apply");
        container.push(button);

        var buttonRaised = new Button("Apply");
        buttonRaised.style.add(ButtonModifier.Raised);
        container.push(buttonRaised);

        var buttonUnelevated = new Button("Apply");
        buttonUnelevated.style.add(ButtonModifier.Unelevated);
        container.push(buttonUnelevated);

        addLabeledWidget("Button", container);
    }

    function addFAB() {
        var fab = new FAB(new Icon());
        addLabeledWidget("Floating Action Button", fab);
    }

    function addIconToggle() {
        var iconToggle = new IconToggle(
            new Icon("favorite_border"),
            { label: "Remove from favorites", content: "favorite" },
            { label: "Add to favorites", content: "favorite_border" }
        );

        addLabeledWidget("Icon toggle", iconToggle);
    }

    function addCard() {
        var card = new Card();
        card.element.style.maxWidth = "400px";

        var media = new CardMedia();
        media.style.add(CardMediaModifier.Ratio16x9);
        media.title = "Media title";
        card.push(media);

        var content = new ContainerWidget();
        content.element.textContent = "Some content here.";
        card.push(content);

        var actions = new CardActions();
        actions.push(new Button("Action 1"));
        actions.push(new Button("Action 2"));
        card.push(actions);

        addLabeledWidget("Card", card);
    }

    function addChips() {
        var chipSet = new ChipSet();

        for (index in 0...4) {
            var chip = new Chip('Chip $index');
            chipSet.push(chip);
        }

        addLabeledWidget("Chips", chipSet);

        var chipSetChoice = new ChipSet();
        chipSetChoice.style.add(ChipSetModifier.Choice);

        for (index in 0...4) {
            var chip = new Chip('Chip $index');

            if (index == 1) {
                chip.selected = true;
            }

            chipSetChoice.push(chip);
        }

        addLabeledWidget("Chips (choice)", chipSetChoice);

        var chipSetFilter = new ChipSet();
        chipSetFilter.style.add(ChipSetModifier.Filter);

        for (index in 0...4) {
            var chip = new Chip('Chip $index');

            if (index == 1) {
                chip.selected = true;
            }
            chip.addCheckmark();
            chipSetFilter.push(chip);
        }

        addLabeledWidget("Chips (filter)", chipSetFilter);
    }

    function addDialog() {
        var container = new ContainerWidget();

        var dialog = new Dialog();
        dialog.title = "Dialog title";
        dialog.description = "Dialog contents";
        dialog.setButtonText("Send", "Cancel");

        container.push(dialog);

        var button = new Button("Show dialog");
        button.element.addEventListener("click", dialog.show);
        container.push(button);

        addLabeledWidget("Dialog", container);
    }

    function addDrawer() {
        var selectElement = Browser.document.createSelectElement();
        selectElement.innerHTML = "
            <option value='permanent' selected>Permanent</option>
            <option value='persistent'>Persistent</option>
            <option value='temporary' selected>Temporary</option>
        ";

        var selectWidget = new ContainerWidget(selectElement);

        var content = new List();

        for (index in 0...5) {
            content.push(new ListItem('Drawer item $index'));
        }

        function updateDrawer() {
            switch (selectElement.value) {
                case "permanent":
                    drawer = new PermanentDrawer();
                    drawer.addToolbarSpacer();
                case "persistent":
                    drawer = new PersistentDrawer();
                    drawer.addHeader();
                case "temporary":
                    drawer = new TemporaryDrawer();
                    drawer.addHeader();
            }

            drawerContainerWidget.push(drawer);
            drawer.content = content;
        }

        updateDrawer();

        selectElement.addEventListener("change", function (event) {
            drawerContainerWidget.remove(drawer);
            updateDrawer();
        });

        addLabeledWidget("Drawer", selectWidget);
    }

    function addImageList() {
        var imageList = new ImageList();

        for (index in 0...10) {
            var imageElement = Browser.document.createImageElement();
            var image = new ContainerWidget(imageElement);
            var item = new ImageListItem(image, 'Image $index', true);
            imageList.push(item);
        }

        addLabeledWidget("Image List", imageList);
    }

    function addCheckbox() {
        var checkbox = new Checkbox();
        var formField = new FormField(checkbox, "Checkbox");

        addLabeledWidget("Checkbox", formField);
    }

    function addRadioButton() {
        var container = new ContainerWidget();

        for (index in 0...3) {
            var radio = new RadioButton("set1");
            var formField = new FormField(radio, 'Radio $index');
            container.push(formField);
        }

        addLabeledWidget("Radio buttons", container);
    }

    function addSelectMenu() {
        var selectMenu = new SelectMenu("Pick something", true);
        selectMenu.element.style.width = "100%";

        for (index in 0...10) {
            var option = new SelectMenuOption('option$index', 'Option $index');
            selectMenu.options.push(option);
        }

        addLabeledWidget("Select menu", selectMenu);
    }

    function addSlider() {
        var slider = new Slider("Example");
        addLabeledWidget("Slider", slider);
        slider.layout();
    }

    function addSwitch() {
        var switch_ = new Switch();
        var formField = new FormField(switch_, "Switch", true);

        addLabeledWidget("Switch", formField);
    }

    function addTextField() {
        var container = new ContainerWidget();

        var textField = new TextField("Text field");
        container.push(textField);

        var textFieldBox = new TextField("Text field box with icon");
        textFieldBox.style.add(TextFieldModifier.Box);
        textFieldBox.setIcon(new TextFieldIcon(new Icon()));
        container.push(textFieldBox);

        var textFieldFullWidth = new TextField("Full width text box", true);
        container.push(textFieldFullWidth);

        var textFieldTextArea = new TextFieldTextArea("Text area");
        var helperText = new TextFieldHelperText("Helper text");
        textFieldTextArea.helperTextWidget = helperText;
        container.push(textFieldTextArea);
        container.push(helperText);

        addLabeledWidget("Text field", container);
    }

    function addLayoutGrid() {
        var layoutGrid = new LayoutGrid();

        for (index in 0...10) {
            var cell = new LayoutGridCell();
            cell.element.textContent = 'Cell $index';
            cell.element.style.border = "0.1em solid";

            layoutGrid.inner.push(cell);
        }

        addLabeledWidget("Layout grid", layoutGrid);
    }

    function addLinearProgress() {
        var container = new ContainerWidget();

        var linearProgress = new LinearProgress();
        linearProgress.progress = 0.3;
        linearProgress.buffer = 0.6;
        container.push(linearProgress);

        container.push(new Widget(Browser.document.createBRElement()));

        linearProgress = new LinearProgress();
        linearProgress.determinate = false;
        container.push(linearProgress);

        container.push(new Widget(Browser.document.createBRElement()));

        linearProgress = new LinearProgress();
        linearProgress.close();
        container.push(linearProgress);

        addLabeledWidget("Linear progress", container);
    }

    function addList() {
        var group = new ListGroup();
        var list = new List();
        list.style.add(ListModifier.TwoLine);

        group.push(new ListGroupSubheader("Group Subheader"));
        group.push(list);

        for (index in 0...6) {
            var item = new ListItem('Item $index');
            item.labelSecondary = "Secondary text";
            item.meta = new Switch();
            list.push(item);

            if (index == 3) {
                list.push(new ListDivider(true));
            }
        }

        addLabeledWidget("List", group);
    }

    function addMenu() {
        var container = new ContainerWidget();
        Menu.addAnchor(container);

        var menu = new Menu();
        container.push(menu);

        for (index in 0...5) {
            menu.list.push(new MenuListItem('Item $index'));
        }

        var button = new Button("Open menu");
        button.element.addEventListener("click", function () {
            menu.show();
        });
        container.push(button);

        addLabeledWidget("Menu", container);
    }

    function addSnackbar() {
        var container = new ContainerWidget();

        var snackbar = new Snackbar();
        container.push(snackbar);

        var button = new Button("Show snackbar");
        button.element.addEventListener("click", function () {
            snackbar.show({
                message: "Hello world!",
                actionText: "Hi",
                actionHandler: function () {}
            });
        });
        container.push(button);

        addLabeledWidget("Snackbar", container);
    }

    function addTabs() {
        var tabs = [];
        for (index in 0...10) {
            var tab = new Tab('Tab $index');
            tabs.push(tab);
        }

        var tabBar = new TabBar(TabBarType.Text, tabs, true);
        var scroller = new TabBarScroller(
            tabBar,
            new Icon("navigate_before", "Before"),
            new Icon("navigate_next", "Next")
        );

        addLabeledWidget("Tabs", scroller);
    }

    function addTopAppBar() {
        var appBar = new TopAppBar();
        var adjust = new TopAppBarAdjust();

        appBar.row.section.title = "Demo";
        appBar.style.add(TopAppBarModifier.Fixed);
        adjust.style.add(TopAppBarAdjustModifier.Fixed);

        appBar.row.toolbar.push(new Icon("face", true));

        topAppBarContainerWidget.push(appBar);
        topAppBarContainerWidget.push(adjust);

        appBar.layout();

        appBar.element.addEventListener(MDCTopAppBarEvent.Nav, function () {
            drawer.open = true;
        });
    }
}
