.class public Lcom/android/alarmclock/DigitalAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DigitalAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 47
    return-void
.end method

.method private refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "c"
    .parameter "clock"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e0035

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const v1, 0x7f0d0045

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0e0041

    const/4 v4, 0x0

    .line 74
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040014

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 75
    const v1, 0x7f0e0040

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/DeskClock;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 78
    invoke-static {p1, v0, p4}, Lcom/android/alarmclock/WidgetUtils;->setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/alarmclock/DigitalAppWidgetService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, p3, v5, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 85
    invoke-virtual {p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 87
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "newOptions"

    .prologue
    .line 63
    invoke-static {p1, p4, p3}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v0

    .line 64
    .local v0, ratio:F
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 65
    .local v1, widgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V

    .line 66
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .parameter "ctxt"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 51
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 52
    .local v0, appWidgetId:I
    const/4 v5, 0x0

    invoke-static {p1, v5, v0}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v4

    .line 53
    .local v4, ratio:F
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0           #appWidgetId:I
    .end local v4           #ratio:F
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 57
    return-void
.end method
