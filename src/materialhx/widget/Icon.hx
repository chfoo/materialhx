package materialhx.widget;

import js.Browser;


class Icon extends Widget implements IIcon {
    public function new(slug:String = "bug_report", ?label:String,
            navigation:Bool = false) {
        super(Browser.document.createElement(navigation ? "button" : "i"));

        _element.textContent = slug;
        _element.classList.add("material-icons");

        if (label != null) {
            _element.setAttribute("aria-label", label);
        } else {
            _element.setAttribute("aria-hidden", "true");
        }
    }
}
