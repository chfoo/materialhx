package materialhx.widget;

import js.html.Element;
import materialhx.css.DialogStyle;
import materialhx.html.DialogBuilder;
import materialhx.mdc.dialog.MDCDialog;


class Dialog extends Widget implements IDisposable {
    public var title(get, set):String;
    public var description(get, set):String;

    public var open(get, set):Bool;
    public var scrollable(get, set):Bool;
    public var component(default, null):MDCDialog;

    public var header(default, null):DialogHeader;
    public var body(default, null):DialogBody;
    public var footer(default, null):DialogFooter;

    public function new() {
        var elements = DialogBuilder.dialog();

        super(elements.root, elements.surface);

        header = new DialogHeader(this);
        body = new DialogBody(this);
        footer = new DialogFooter();

        push(header);
        push(body);
        push(footer);

        component = new MDCDialog(_element);
    }

    function get_title():String {
        return header.titleElement.textContent;
    }

    function set_title(value:String):String {
        return  header.titleElement.textContent = value;
    }

    function get_description():String {
        return body.element.textContent;
    }

    function set_description(value:String):String {
        return body.element.textContent = value;
    }

    public function setText(title:String, description:String = "") {
        this.title = title;
        this.description = description;
    }

    function get_open():Bool {
        return component.open;
    }

    function set_open(value:Bool):Bool {
        return component.open = value;
    }

    function get_scrollable():Bool {
        return body.element.classList.contains(DialogBodyModifier.Scrollable);
    }

    function set_scrollable(value:Bool):Bool {
        body.element.classList.toggle(DialogBodyModifier.Scrollable, value);

        return value;
    }

    public function show() {
        component.show();
    }

    public function close() {
        component.close();
    }

    public function dispose() {
        component.destroy();
    }

    public function setButtonText(acceptText:String, ?cancelText:String) {
        if (footer.acceptButton == null) {
            footer.acceptButton = new Button(acceptText);
        }

        footer.acceptButton.text = acceptText;

        if (cancelText == null) {
            return;
        }

        if (footer.cancelButton == null) {
            footer.cancelButton = new Button(cancelText);
        }

        footer.cancelButton.text = cancelText;
    }
}


class DialogHeader extends Widget {
    public var titleElement(default, null):Element;

    public function new(dialog:Dialog) {
        super(DialogBuilder.header());
        titleElement = DialogBuilder.headerTitle(dialog.element);
        _element.appendChild(titleElement);
    }
}


class DialogBody extends Widget {
    public function new(dialog:Dialog) {
        super(DialogBuilder.body(dialog.element));
    }
}


class DialogFooter extends Widget {
    public var acceptButton(get, set):Null<Button>;
    public var cancelButton(get, set):Null<Button>;

    var _acceptButton:Button;
    var _cancelButton:Button;

    public function new() {
        super(DialogBuilder.footer());
    }

     function get_acceptButton():Button {
        return _acceptButton;
    }

    function set_acceptButton(value:Button):Button {
        if (_acceptButton != null) {
            remove(_acceptButton);
        }

        _acceptButton = value;
        DialogBuilder.upgradeTofooterButton(_acceptButton.element, true);
        push(_acceptButton);

        return _acceptButton;
    }

    function get_cancelButton():Button {
        return _cancelButton;
    }

    function set_cancelButton(value:Button):Button {
        if (_cancelButton != null) {
            remove(_cancelButton);
        }

        _cancelButton = value;
        DialogBuilder.upgradeTofooterButton(_cancelButton.element, false);
        unshift(_cancelButton);

        return _cancelButton;
    }
}
