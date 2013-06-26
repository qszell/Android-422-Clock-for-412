.class public Lcom/android/alarmclock/DigitalWidgetViewsFactory;
.super Landroid/content/BroadcastReceiver;
.source "DigitalWidgetViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mId:I

.field private mLastTimeZone:Ljava/lang/String;

.field private mListScale:F

.field private mQuarterlyIntent:Landroid/app/PendingIntent;

.field private mReloadCitiesDb:Z

.field private mReloadCitiesList:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f80

    .line 143
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 50
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesDb:Z

    .line 52
    iput v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 53
    iput v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mListScale:F

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 50
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesDb:Z

    .line 52
    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 53
    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mListScale:F

    .line 136
    iput-object p1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    .line 137
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 139
    new-instance v0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;-><init>(Lcom/android/alarmclock/DigitalWidgetViewsFactory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    .line 140
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mLastTimeZone:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mListScale:F

    return v0
.end method

.method private refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "c"
    .parameter "widget"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e0035

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const v1, 0x7f0d0045

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    iget v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/WidgetUtils;->showList(Landroid/content/Context;IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-virtual {v0}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->getCount()I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "position"

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-virtual {v2, p1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 167
    .local v1, v:Landroid/widget/RemoteViews;
    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, fillInIntent:Landroid/content/Intent;
    const v2, 0x7f0e0091

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 171
    .end local v0           #fillInIntent:Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/deskclock/Utils;->startAlarmOnQuarterHour(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mQuarterlyIntent:Landroid/app/PendingIntent;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "com.android.deskclock.NEXT_ALARM_TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->loadData(Landroid/content/Context;)V

    .line 205
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesDb:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 209
    iput-boolean v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesDb:Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-static {v0, v3, v1}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 213
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-static {v0, v3, v1}, Lcom/android/alarmclock/WidgetUtils;->getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mListScale:F

    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mQuarterlyIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->cancelAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 220
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0e0041

    const v8, 0x7f040014

    const/4 v6, 0x1

    .line 226
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    if-nez v5, :cond_0

    .line 279
    :goto_0
    return-void

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 232
    .local v4, widgetManager:Landroid/appwidget/AppWidgetManager;
    const-string v5, "com.android.deskclock.NEXT_ALARM_TIME_SET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v3, widget:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v3}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 237
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-virtual {v4, v5, v3}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 238
    .end local v3           #widget:Landroid/widget/RemoteViews;
    :cond_1
    const-string v5, "com.android.deskclock.worldclock.update"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    iput-boolean v6, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 241
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-virtual {v4, v5, v9}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 246
    .restart local v3       #widget:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v3}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 247
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-virtual {v4, v5, v3}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 249
    .end local v3           #widget:Landroid/widget/RemoteViews;
    :cond_3
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 251
    iput-boolean v6, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 252
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mLastTimeZone:Ljava/lang/String;

    .line 270
    :cond_4
    :goto_1
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-virtual {v4, v5, v9}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 271
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 273
    .restart local v3       #widget:Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-static {p1, v5, v6}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v2

    .line 274
    .local v2, ratio:F
    invoke-static {p1, v3, v2}, Lcom/android/alarmclock/WidgetUtils;->setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V

    .line 275
    invoke-direct {p0, p1, v3}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 276
    iget v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-virtual {v4, v5, v3}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 277
    iget-object v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mQuarterlyIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v5}, Lcom/android/deskclock/Utils;->refreshAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mQuarterlyIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 253
    .end local v2           #ratio:F
    .end local v3           #widget:Landroid/widget/RemoteViews;
    :cond_5
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 255
    iput-boolean v6, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesDb:Z

    goto :goto_1

    .line 256
    :cond_6
    const-string v5, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, currentTimeZone:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mLastTimeZone:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 263
    iput-boolean v6, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mReloadCitiesList:Z

    .line 264
    iput-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mLastTimeZone:Ljava/lang/String;

    .line 265
    const-string v5, "DigitalWidgetViewsFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected time zone change,updating time zone to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
