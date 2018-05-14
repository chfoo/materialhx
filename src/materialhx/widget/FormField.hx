package materialhx.widget;

import js.Browser;
import materialhx.css.FormFieldStyle;
import materialhx.html.FormFieldBuilder;
import materialhx.mdc.formfield.MDCFormField;


class FormField extends Widget {
    var component:MDCFormField;

    public function new(inputWidget:IInputWidget, label:String,
            alignEnd:Bool = false) {
        super(FormFieldBuilder.formField());

        push(inputWidget);

        var labelElement = Browser.document.createLabelElement();
        labelElement.htmlFor = inputWidget.inputElement.id;
        labelElement.textContent = label;
        _element.appendChild(labelElement);

        component = new MDCFormField(_element);
        component.input = inputWidget.inputElement;

        if (alignEnd) {
            _element.classList.add(FormFieldModifier.AlignEnd);
        }
    }
}
