#pragma once

#include "channel.hpp"
#include "messages/lazyloadedimage.hpp"
#include "messages/messageref.hpp"
#include "messages/word.hpp"
#include "widgets/accountpopup.hpp"
#include "widgets/scrollbar.hpp"

#include <QPaintEvent>
#include <QScroller>
#include <QWheelEvent>
#include <QWidget>

namespace chatterino {
namespace widgets {
class ChatWidget;

class ChatWidgetView : public QWidget
{
public:
    explicit ChatWidgetView(ChatWidget *parent);
    ~ChatWidgetView();

    bool layoutMessages();

    void updateGifEmotes();
    ScrollBar *getScrollbar();

protected:
    void resizeEvent(QResizeEvent *) override;

    void paintEvent(QPaintEvent *) override;
    void wheelEvent(QWheelEvent *event) override;

    void mouseMoveEvent(QMouseEvent *event) override;
    void mousePressEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;

    bool tryGetMessageAt(QPoint p, std::shared_ptr<messages::MessageRef> &message,
                         QPoint &relativePos);

private:
    struct GifEmoteData {
        messages::LazyLoadedImage *image;
        QRect rect;
    };

    std::vector<GifEmoteData> _gifEmotes;

    ChatWidget *_chatWidget;

    ScrollBar _scrollbar;

    // This variable can be used to decide whether or not we should render the "Show latest
    // messages" button
    bool showingLatestMessages = true;

    AccountPopupWidget _userPopupWidget;
    bool _onlyUpdateEmotes;

    // Mouse event variables
    bool _mouseDown;
    QPointF _lastPressPosition;

private slots:
    void wordTypeMaskChanged()
    {
        layoutMessages();
        update();
    }
};

}  // namespace widgets
}  // namespace chatterino