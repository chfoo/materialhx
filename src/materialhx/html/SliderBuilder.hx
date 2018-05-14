package materialhx.html;

import js.html.Element;
import materialhx.css.SliderStyle;

using materialhx.html.HTMLTools;


class SliderBuilder {
    public static inline var THUMB_SVG = '
    <svg class="mdc-slider__thumb" width="21" height="21">
        <circle cx="10.5" cy="10.5" r="7.875"></circle>
    </svg>
    ';

    public static function slider(label:String,
            valueMin:Float = 0, valueMax:Float = 100, valueNow:Float = 0)
            :Element {
        var element = HTMLTools.newElement("div", SliderStyle.SLIDER);

        element.tabIndex = 0;
        element.setAttribute("role", "slider");
        element.setAttribute("aria-valuemin", Std.string(valueMin));
        element.setAttribute("aria-valuemax", Std.string(valueMax));
        element.setAttribute("aria-valuenow", Std.string(valueNow));
        element.setAttribute("aria-label", label);

        return element;
    }

    public static function trackContainer(markers:Bool = false):Element {
        var trackContainer = HTMLTools.newElement("div",
            SliderStyle.TRACK_CONTAINER);

        trackContainer.appendNewElement("div", SliderStyle.TRACK);

        if (markers) {
            trackContainer.appendNewElement("div",
                SliderStyle.TRACK_MARKER_CONTAINER);
        }

        return trackContainer;
    }

    public static function thumbContainer(discrete:Bool = false):Element {
        var thumbContainer = HTMLTools.newElement("div",
            SliderStyle.THUMB_CONTAINER);

        if (discrete) {
            thumbContainer.appendNewElement("div", SliderStyle.PIN)
                .appendNewElement("span", SliderStyle.PIN_VALUE_MARKER);
            thumbContainer.classList.add(SliderModifier.Discrete);
        }

        thumbContainer.appendHTML(THUMB_SVG);
        thumbContainer.appendNewElement("div", SliderStyle.FOCUS_RING);

        return thumbContainer;
    }
}
