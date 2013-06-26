.class public Lcom/android/deskclock/widget/swipeablelistview/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field private static sDebugLoggingEnabledForTests:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->sDebugLoggingEnabledForTests:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 167
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 202
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 97
    const/4 v0, 0x6

    if-le v0, p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
