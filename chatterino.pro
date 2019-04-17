#-------------------------------------------------
#
# Project created by QtCreator 2016-12-28T18:23:35
#
#-------------------------------------------------

message(----)

# define project shit
QT                += widgets core gui network multimedia svg concurrent
CONFIG            += communi
COMMUNI           += core model util

INCLUDEPATH       += src/
TARGET             = chatterino
TEMPLATE           = app
PRECOMPILED_HEADER = src/PrecompiledHeader.hpp
CONFIG            += precompile_header
DEFINES           += CHATTERINO

win32-msvc* {
    QMAKE_CXXFLAGS += /std:c++17
} else {
    QMAKE_CXXFLAGS += -std=c++17
}

useBreakpad {
    LIBS += -L$$PWD/lib/qBreakpad/handler/build
    include(lib/qBreakpad/qBreakpad.pri)
    DEFINES += C_USE_BREAKPAD
}

# https://bugreports.qt.io/browse/QTBUG-27018
equals(QMAKE_CXX, "clang++")|equals(QMAKE_CXX, "g++") {
    TARGET = bin/chatterino
}

# Icons
#macx:ICON = resources/images/chatterino2.icns
win32:RC_FILE = resources/windows.rc

macx {
    LIBS += -L/usr/local/lib
}

# Submodules
include(lib/boost.pri)
include(lib/fmt.pri)
include(lib/humanize.pri)
DEFINES += IRC_NAMESPACE=Communi
include(lib/libcommuni.pri)
include(lib/websocketpp.pri)
include(lib/openssl.pri)
include(lib/wintoast.pri)
include(lib/signals.pri)
include(lib/settings.pri)
include(lib/serialize.pri)
include(lib/winsdk.pri)
include(lib/rapidjson.pri)

# Optional feature: QtWebEngine
#exists ($(QTDIR)/include/QtWebEngine/QtWebEngine) {
#    message(Using QWebEngine)
#    QT += webenginewidgets
#    DEFINES += "USEWEBENGINE"
#}

SOURCES += \
    src/ab/BaseWidget.cpp \
    src/ab/BaseWindow.cpp \
    src/ab/Column.cpp \
    src/ab/FlatButton.cpp \
    src/ab/Notebook.cpp \
    src/ab/Notebook.Misc.cpp \
    src/ab/Row.cpp \
    src/ab/TitleBarButton.cpp \
    src/ab/util/Benchmark.cpp \
    src/ab/util/ConnectionOwner.cpp \
    src/ab/util/FunctionEventFilter.cpp \
    src/ab/util/MakeWidget.cpp \
    src/ab/util/ScaleQss.cpp \
    src/ab/util/WindowsHelper.cpp \
    src/Application.cpp \
    src/autogenerated/ResourcesAutogen.cpp \
    src/BaseSettings.cpp \
    src/BrowserExtension.cpp \
    src/common/CompletionModel.cpp \
    src/common/DownloadManager.cpp \
    src/common/LinkParser.cpp \
    src/common/UsernameSet.cpp \
    src/controllers/accounts/Account.cpp \
    src/controllers/accounts/AccountController.cpp \
    src/controllers/accounts/AccountModel.cpp \
    src/controllers/commands/Command.cpp \
    src/controllers/commands/CommandController.cpp \
    src/controllers/commands/CommandModel.cpp \
    src/controllers/highlights/HighlightBlacklistModel.cpp \
    src/controllers/highlights/HighlightController.cpp \
    src/controllers/highlights/HighlightModel.cpp \
    src/controllers/highlights/UserHighlightModel.cpp \
    src/controllers/ignores/IgnoreController.cpp \
    src/controllers/ignores/IgnoreModel.cpp \
    src/controllers/moderationactions/ModerationAction.cpp \
    src/controllers/moderationactions/ModerationActionModel.cpp \
    src/controllers/moderationactions/ModerationActions.cpp \
    src/controllers/notifications/NotificationController.cpp \
    src/controllers/notifications/NotificationModel.cpp \
    src/controllers/taggedusers/TaggedUser.cpp \
    src/controllers/taggedusers/TaggedUsersController.cpp \
    src/controllers/taggedusers/TaggedUsersModel.cpp \
    src/dialogs/SelectChannelDialog.cpp \
    src/irc/IrcConnection2.cpp \
    src/main.cpp \
    src/messages/Emote.cpp \
    src/messages/Fonts.cpp \
    src/messages/Image.cpp \
    src/messages/ImageSet.cpp \
    src/messages/layouts/MessageLayout.cpp \
    src/messages/layouts/MessageLayoutContainer.cpp \
    src/messages/layouts/MessageLayoutElement.cpp \
    src/messages/Link.cpp \
    src/messages/Message.cpp \
    src/messages/MessageBuilder.cpp \
    src/messages/MessageColor.cpp \
    src/messages/MessageContainer.cpp \
    src/messages/MessageElement.cpp \
    src/messages/ScrollbarHighlight.cpp \
    src/messages/ThemexD.cpp \
    src/net/NetworkData.cpp \
    src/net/NetworkManager.cpp \
    src/net/NetworkRequest.cpp \
    src/net/NetworkResult.cpp \
    src/net/NetworkTimer.cpp \
    src/Provider.cpp \
    src/providers/bttv/BttvEmotes.cpp \
    src/providers/chatterino/ChatterinoBadges.cpp \
    src/providers/emoji/Emojis.cpp \
    src/providers/ffz/FfzEmotes.cpp \
    src/providers/ffz/FfzModBadge.cpp \
    src/providers/irc/IrcAccount.cpp \
    src/providers/LinkResolver.cpp \
    src/providers/twitch/ChatroomChannel.cpp \
    src/providers/twitch/PartialTwitchUser.cpp \
    src/providers/twitch/PubsubActions.cpp \
    src/providers/twitch/PubsubClient.cpp \
    src/providers/twitch/PubsubHelpers.cpp \
    src/providers/twitch/TwitchAccount.cpp \
    src/providers/twitch/TwitchAccountManager.cpp \
    src/providers/twitch/TwitchApi.cpp \
    src/providers/twitch/TwitchHelpers.cpp \
    src/providers/twitch/TwitchParseCheerEmotes.cpp \
    src/providers/twitch/TwitchUser.cpp \
    src/Room.cpp \
    src/RunGui.cpp \
    src/singletons/Badges.cpp \
    src/singletons/Emotes.cpp \
    src/singletons/helper/GifTimer.cpp \
    src/singletons/helper/LoggingChannel.cpp \
    src/singletons/Logging.cpp \
    src/singletons/NativeMessaging.cpp \
    src/singletons/Paths.cpp \
    src/singletons/Settings.cpp \
    src/singletons/Toasts.cpp \
    src/singletons/Updates.cpp \
    src/twitch/TwitchBadges.cpp \
    src/twitch/TwitchChannel.cpp \
    src/twitch/TwitchChatConnection.cpp \
    src/twitch/TwitchEmotes.cpp \
    src/twitch/TwitchHandleMessage.cpp \
    src/twitch/TwitchMessage.cpp \
    src/twitch/TwitchMessageBuilder.cpp \
    src/twitch/TwitchProvider.cpp \
    src/twitch/TwitchRoom.cpp \
    src/ui/AccountSwitchPopup.cpp \
    src/ui/Dropdown.cpp \
    src/ui/EmotePreview.cpp \
    src/ui/FlexLayout.cpp \
    src/ui/FlexLayout.Private.cpp \
    src/ui/Line.cpp \
    src/ui/MessageView.cpp \
    src/ui/MessageView.Pauser.cpp \
    src/ui/MessageView.Selector.cpp \
    src/ui/Scrollbar.cpp \
    src/ui/SearchWindow.cpp \
    src/ui/Split.cpp \
    src/ui/SplitContainer.cpp \
    src/ui/SplitHeader.cpp \
    src/ui/SplitInput.cpp \
    src/ui/SplitInput.ResizingTextEdit.cpp \
    src/ui/Tab.cpp \
    src/ui/Tooltip.cpp \
    src/ui/Window.cpp \
    src/util/ChatterinoSetting.cpp \
    src/util/DebugCount.cpp \
    src/util/FormatTime.cpp \
    src/util/FuzzyConvert.cpp \
    src/util/IncognitoBrowser.cpp \
    src/util/InitUpdateButton.cpp \
    src/util/JsonQuery.cpp \
    src/util/RapidjsonHelpers.cpp \
    src/util/Resources.cpp \
    src/util/StreamLink.cpp \
    src/util/Strings.cpp \
    src/widgets/AccountSwitchWidget.cpp \
    src/widgets/AttachedWindow.cpp \
    src/widgets/dialogs/EmotePopup.cpp \
    src/widgets/dialogs/LastRunCrashDialog.cpp \
    src/widgets/dialogs/LoginDialog.cpp \
    src/widgets/dialogs/LogsPopup.cpp \
    src/widgets/dialogs/NotificationPopup.cpp \
    src/widgets/dialogs/QualityPopup.cpp \
    src/widgets/dialogs/SettingsDialog.cpp \
    src/widgets/dialogs/TextInputDialog.cpp \
    src/widgets/dialogs/UpdateDialog.cpp \
    src/widgets/dialogs/UserInfoPopup.cpp \
    src/widgets/dialogs/WelcomeDialog.cpp \
    src/widgets/helper/ComboBoxItemDelegate.cpp \
    src/widgets/helper/DebugPopup.cpp \
    src/widgets/helper/EditableModelView.cpp \
    src/widgets/helper/SettingsDialogTab.cpp \
    src/widgets/helper/SignalLabel.cpp \
    src/widgets/Label.cpp \
    src/widgets/settingspages/AboutPage.cpp \
    src/widgets/settingspages/AccountsPage.cpp \
    src/widgets/settingspages/AdvancedPage.cpp \
    src/widgets/settingspages/CommandPage.cpp \
    src/widgets/settingspages/ExternalToolsPage.cpp \
    src/widgets/settingspages/GeneralPage.cpp \
    src/widgets/settingspages/HighlightingPage.cpp \
    src/widgets/settingspages/IgnoresPage.cpp \
    src/widgets/settingspages/KeyboardSettingsPage.cpp \
    src/widgets/settingspages/ModerationPage.cpp \
    src/widgets/settingspages/NotificationPage.cpp \
    src/widgets/settingspages/SettingsPage.cpp \
    src/widgets/splits/ClosedSplits.cpp \

HEADERS += \
    src/ab/BaseWidget.hpp \
    src/ab/BaseWindow.hpp \
    src/ab/Column.hpp \
    src/ab/FlatButton.hpp \
    src/ab/Notebook.hpp \
    src/ab/Notebook.Misc.hpp \
    src/ab/Row.hpp \
    src/ab/Space.hpp \
    src/ab/TitleBarButton.hpp \
    src/ab/util/AnyPtr.hpp \
    src/ab/util/Benchmark.hpp \
    src/ab/util/ConnectionOwner.hpp \
    src/ab/util/FlagsEnum.hpp \
    src/ab/util/FunctionEventFilter.hpp \
    src/ab/util/MakeWidget.hpp \
    src/ab/util/ScaleQss.hpp \
    src/ab/util/WindowsHelper.hpp \
    src/Application.hpp \
    src/autogenerated/ResourcesAutogen.hpp \
    src/BaseSettings.hpp \
    src/BrowserExtension.hpp \
    src/common/Atomic.hpp \
    src/common/CompletionModel.hpp \
    src/common/ConcurrentMap.hpp \
    src/common/DownloadManager.hpp \
    src/common/LinkParser.hpp \
    src/common/ProviderId.hpp \
    src/common/SignalVector.hpp \
    src/common/SignalVectorModel.hpp \
    src/common/Singleton.hpp \
    src/common/UsernameSet.hpp \
    src/controllers/accounts/Account.hpp \
    src/controllers/accounts/AccountController.hpp \
    src/controllers/accounts/AccountModel.hpp \
    src/controllers/commands/Command.hpp \
    src/controllers/commands/CommandController.hpp \
    src/controllers/commands/CommandModel.hpp \
    src/controllers/highlights/HighlightBlacklistModel.hpp \
    src/controllers/highlights/HighlightBlacklistUser.hpp \
    src/controllers/highlights/HighlightController.hpp \
    src/controllers/highlights/HighlightModel.hpp \
    src/controllers/highlights/HighlightPhrase.hpp \
    src/controllers/highlights/UserHighlightModel.hpp \
    src/controllers/ignores/IgnoreController.hpp \
    src/controllers/ignores/IgnoreModel.hpp \
    src/controllers/ignores/IgnorePhrase.hpp \
    src/controllers/moderationactions/ModerationAction.hpp \
    src/controllers/moderationactions/ModerationActionModel.hpp \
    src/controllers/moderationactions/ModerationActions.hpp \
    src/controllers/notifications/NotificationController.hpp \
    src/controllers/notifications/NotificationModel.hpp \
    src/controllers/taggedusers/TaggedUser.hpp \
    src/controllers/taggedusers/TaggedUsersController.hpp \
    src/controllers/taggedusers/TaggedUsersModel.hpp \
    src/dialogs/SelectChannelDialog.hpp \
    src/irc/IrcConnection2.hpp \
    src/irc/IrcHelpers.hpp \
    src/messages/Common.hpp \
    src/messages/Emote.hpp \
    src/messages/Fonts.hpp \
    src/messages/HistoricMessageAppearance.hpp \
    src/messages/Image.hpp \
    src/messages/ImageSet.hpp \
    src/messages/layouts/MessageLayout.hpp \
    src/messages/layouts/MessageLayoutContainer.hpp \
    src/messages/layouts/MessageLayoutElement.hpp \
    src/messages/Link.hpp \
    src/messages/Message.hpp \
    src/messages/MessageBuilder.hpp \
    src/messages/MessageColor.hpp \
    src/messages/MessageContainer.hpp \
    src/messages/MessageElement.hpp \
    src/messages/ScrollbarHighlight.hpp \
    src/messages/Selection.hpp \
    src/messages/ThemexD.hpp \
    src/net/NetworkCommon.hpp \
    src/net/NetworkData.hpp \
    src/net/NetworkManager.hpp \
    src/net/NetworkRequest.hpp \
    src/net/NetworkRequester.hpp \
    src/net/NetworkResult.hpp \
    src/net/NetworkTimer.hpp \
    src/net/NetworkWorker.hpp \
    src/PrecompiledHeader.hpp \
    src/Provider.hpp \
    src/providers/bttv/BttvEmotes.hpp \
    src/providers/chatterino/ChatterinoBadges.hpp \
    src/providers/emoji/Emojis.hpp \
    src/providers/ffz/FfzEmotes.hpp \
    src/providers/ffz/FfzModBadge.hpp \
    src/providers/irc/IrcAccount.hpp \
    src/providers/LinkResolver.hpp \
    src/providers/twitch/ChatroomChannel.hpp \
    src/providers/twitch/EmoteValue.hpp \
    src/providers/twitch/PartialTwitchUser.hpp \
    src/providers/twitch/PubsubActions.hpp \
    src/providers/twitch/PubsubClient.hpp \
    src/providers/twitch/PubsubHelpers.hpp \
    src/providers/twitch/TwitchAccount.hpp \
    src/providers/twitch/TwitchAccountManager.hpp \
    src/providers/twitch/TwitchApi.hpp \
    src/providers/twitch/TwitchCommon.hpp \
    src/providers/twitch/TwitchHelpers.hpp \
    src/providers/twitch/TwitchParseCheerEmotes.hpp \
    src/providers/twitch/TwitchUser.hpp \
    src/Room.hpp \
    src/RunGui.hpp \
    src/singletons/Badges.hpp \
    src/singletons/Emotes.hpp \
    src/singletons/helper/GifTimer.hpp \
    src/singletons/helper/LoggingChannel.hpp \
    src/singletons/Logging.hpp \
    src/singletons/NativeMessaging.hpp \
    src/singletons/Paths.hpp \
    src/singletons/Settings.hpp \
    src/singletons/Toasts.hpp \
    src/singletons/Updates.hpp \
    src/twitch/TwitchBadges.hpp \
    src/twitch/TwitchChannel.hpp \
    src/twitch/TwitchChatConnection.hpp \
    src/twitch/TwitchEmotes.hpp \
    src/twitch/TwitchHandleMessage.hpp \
    src/twitch/TwitchMessage.hpp \
    src/twitch/TwitchMessageBuilder.hpp \
    src/twitch/TwitchProvider.hpp \
    src/twitch/TwitchRoom.hpp \
    src/ui/AccountSwitchPopup.hpp \
    src/ui/Dropdown.hpp \
    src/ui/EmotePreview.hpp \
    src/ui/FlexLayout.hpp \
    src/ui/FlexLayout.Private.hpp \
    src/ui/Line.hpp \
    src/ui/MessageView.hpp \
    src/ui/MessageView.Pauser.hpp \
    src/ui/MessageView.Selector.hpp \
    src/ui/Scrollbar.hpp \
    src/ui/SearchWindow.hpp \
    src/ui/Split.hpp \
    src/ui/SplitContainer.hpp \
    src/ui/SplitHeader.hpp \
    src/ui/SplitInput.hpp \
    src/ui/SplitInput.ResizingTextEdit.hpp \
    src/ui/Tab.hpp \
    src/ui/Tooltip.hpp \
    src/ui/UiFwd.hpp \
    src/ui/Window.hpp \
    src/util/AssertInGuiThread.hpp \
    src/util/ChatterinoSetting.hpp \
    src/util/CombinePath.hpp \
    src/util/ConcurrentMap.hpp \
    src/util/DebugCount.hpp \
    src/util/DistanceBetweenPoints.hpp \
    src/util/FormatTime.hpp \
    src/util/FuzzyConvert.hpp \
    src/util/Helpers.hpp \
    src/util/IncognitoBrowser.hpp \
    src/util/InitUpdateButton.hpp \
    src/util/IrcHelpers.hpp \
    src/util/IsBigEndian.hpp \
    src/util/JsonQuery.hpp \
    src/util/LayoutCreator.hpp \
    src/util/Log.hpp \
    src/util/Outcome.hpp \
    src/util/PostToThread.hpp \
    src/util/QObjectRef.hpp \
    src/util/QStringHash.hpp \
    src/util/RapidjsonHelpers.hpp \
    src/util/RapidJsonSerializeQString.hpp \
    src/util/RemoveScrollAreaBackground.hpp \
    src/util/Resources.hpp \
    src/util/SharedPtrElementLess.hpp \
    src/util/StandardItemHelper.hpp \
    src/util/StreamLink.hpp \
    src/util/Strings.hpp \
    src/util/UniqueAccess.hpp \
    src/Version.hpp \
    src/widgets/AccountSwitchWidget.hpp \
    src/widgets/AttachedWindow.hpp \
    src/widgets/dialogs/EmotePopup.hpp \
    src/widgets/dialogs/LastRunCrashDialog.hpp \
    src/widgets/dialogs/LoginDialog.hpp \
    src/widgets/dialogs/LogsPopup.hpp \
    src/widgets/dialogs/NotificationPopup.hpp \
    src/widgets/dialogs/QualityPopup.hpp \
    src/widgets/dialogs/SettingsDialog.hpp \
    src/widgets/dialogs/TextInputDialog.hpp \
    src/widgets/dialogs/UpdateDialog.hpp \
    src/widgets/dialogs/UserInfoPopup.hpp \
    src/widgets/dialogs/WelcomeDialog.hpp \
    src/widgets/helper/ComboBoxItemDelegate.hpp \
    src/widgets/helper/DebugPopup.hpp \
    src/widgets/helper/EditableModelView.hpp \
    src/widgets/helper/SettingsDialogTab.hpp \
    src/widgets/helper/SignalLabel.hpp \
    src/widgets/Label.hpp \
    src/widgets/settingspages/AboutPage.hpp \
    src/widgets/settingspages/AccountsPage.hpp \
    src/widgets/settingspages/AdvancedPage.hpp \
    src/widgets/settingspages/CommandPage.hpp \
    src/widgets/settingspages/ExternalToolsPage.hpp \
    src/widgets/settingspages/GeneralPage.hpp \
    src/widgets/settingspages/HighlightingPage.hpp \
    src/widgets/settingspages/IgnoresPage.hpp \
    src/widgets/settingspages/KeyboardSettingsPage.hpp \
    src/widgets/settingspages/ModerationPage.hpp \
    src/widgets/settingspages/NotificationPage.hpp \
    src/widgets/settingspages/SettingsPage.hpp \
    src/widgets/splits/ClosedSplits.hpp \

RESOURCES += \
    resources/resources.qrc \
    resources/resources_autogenerated.qrc

DISTFILES +=

FORMS +=

# do not use windows min/max macros
#win32 {
#    DEFINES += NOMINMAX
#}
