package materialhx.html;

import js.html.Element;
import materialhx.css.LinearProgressStyle;

using materialhx.html.HTMLTools;


class LinearProgressBuilder {
    public static function linearProgress():Element {
        var element = HTMLTools.newElement("div",
            LinearProgressStyle.LINEAR_PROGRESS);

        element.appendNewElement("div", LinearProgressStyle.BUFFERING_DOTS);
        element.appendNewElement("div", LinearProgressStyle.BUFFER);

        var primaryBar = element.appendNewElement("div",
            LinearProgressStyle.BAR);
        primaryBar.classList.add(LinearProgressStyle.PRIMARY_BAR);
        primaryBar.appendNewElement("div", LinearProgressStyle.BAR_INNER);

        var secondaryBar = element.appendNewElement("div",
            LinearProgressStyle.BAR);
        secondaryBar.classList.add(LinearProgressStyle.SECONDARY_BAR);
        secondaryBar.appendNewElement("div", LinearProgressStyle.BAR_INNER);

        return element;
    }
}
