.class public Lcom/android/deskclock/stopwatch/StopwatchService;
.super Landroid/app/Service;
.source "StopwatchService.java"


# instance fields
.field private mElapsedTime:J

.field private mLoadApp:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumLaps:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearSavedNotification()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

.method private closeNotificationShade()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchService;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private readFromSharedPrefs()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "sw_start_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 302
    const-string v1, "sw_accum_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 303
    const-string v1, "sw_lap_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 304
    return-void
.end method

.method private readLapsFromPrefs()[J
    .locals 12

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 309
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v9, "sw_lap_num"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 310
    .local v5, numLaps:I
    new-array v4, v5, [J

    .line 311
    .local v4, laps:[J
    const-wide/16 v7, 0x0

    .line 312
    .local v7, prevLapElapsedTime:J
    const/4 v3, 0x0

    .local v3, lap_i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, key:Ljava/lang/String;
    const-wide/16 v9, 0x0

    invoke-interface {v6, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 315
    .local v1, lap:J
    cmp-long v9, v1, v7

    if-nez v9, :cond_0

    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_0

    .line 316
    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 318
    :cond_0
    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    sub-long v10, v1, v7

    aput-wide v10, v4, v9

    .line 319
    move-wide v7, v1

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #lap:J
    :cond_1
    return-object v4
.end method

.method private saveNotification(JZI)V
    .locals 7
    .parameter "clockTime"
    .parameter "clockRunning"
    .parameter "numLaps"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_0

    .line 248
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v2, "notif_clock_running"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    :goto_0
    const-string v2, "sw_update_circle"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void

    .line 252
    :cond_0
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setNotification(JZI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const/4 v1, 0x0

    const/high16 v2, 0x4800

    invoke-static {v7, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 158
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 160
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    const v1, 0x7f0e005d

    const/4 v4, 0x0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 163
    const v1, 0x7f0e005b

    const v2, 0x7f02008d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 164
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040020

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    const v2, 0x7f0e005f

    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    const v2, 0x7f0e0060

    const/4 v5, 0x0

    move-wide v3, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 169
    const v2, 0x7f0e005b

    const v3, 0x7f02008d

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 171
    if-eqz p3, :cond_1

    .line 173
    const v2, 0x7f0e0062

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v3, "lap_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const v3, 0x7f0e0062

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 179
    const v2, 0x7f0e0062

    const v3, 0x7f020065

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 182
    const v2, 0x7f0e0063

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v3, "stop_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const v3, 0x7f0e0063

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 188
    const v2, 0x7f0e0063

    const v3, 0x7f020068

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 191
    if-lez p4, :cond_0

    .line 192
    const v2, 0x7f0d005e

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const v3, 0x7f0e005e

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    const v3, 0x7f0e005e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    const v3, 0x7f0e0061

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    const v2, 0x7f0e0061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v2, "reset_stopwatch"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f02007c

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 238
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 239
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    return-void

    .line 199
    :cond_0
    const v2, 0x7f0e005e

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v2, 0x7f0e0061

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 204
    :cond_1
    const v2, 0x7f0e0062

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const-string v3, "reset_and_launch_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const v3, 0x7f0e0062

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 210
    const v2, 0x7f0e0062

    const v3, 0x7f020066

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 213
    const v2, 0x7f0e0063

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v3, "start_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const v3, 0x7f0e0063

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 219
    const v2, 0x7f0e0063

    const v3, 0x7f020067

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 222
    const v2, 0x7f0e005e

    const v3, 0x7f0d007c

    invoke-virtual {p0, v3}, Lcom/android/deskclock/stopwatch/StopwatchService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 223
    const v2, 0x7f0e005e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    const v2, 0x7f0e0061

    const v3, 0x7f0d007c

    invoke-virtual {p0, v3}, Lcom/android/deskclock/stopwatch/StopwatchService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 225
    const v2, 0x7f0e0061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 231
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private showSavedNotification()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 264
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v8, "notif_clock_base"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 265
    .local v0, clockBaseTime:J
    const-string v8, "notif_clock_elapsed"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 266
    .local v2, clockElapsedTime:J
    const-string v8, "notif_clock_running"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 267
    .local v4, clockRunning:Z
    const-string v8, "sw_lap_num"

    const/4 v9, -0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 268
    .local v5, numLaps:I
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    .line 269
    cmp-long v8, v2, v10

    if-nez v8, :cond_0

    .line 279
    :goto_0
    return v7

    .line 274
    :cond_0
    iput-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 275
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 278
    :cond_1
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 279
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private writeSharedPrefsLap(JZ)V
    .locals 14
    .parameter "lapTimeElapsed"
    .parameter "updateCircle"

    .prologue
    .line 381
    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 382
    if-eqz p3, :cond_0

    .line 383
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 384
    .local v12, time:J
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 386
    .local v11, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 387
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v9

    .line 388
    .local v9, laps:[J
    array-length v10, v9

    .line 389
    .local v10, numLaps:I
    const/4 v0, 0x1

    aget-wide v7, v9, v0

    .line 390
    .local v7, lapTime:J
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 391
    const-string v0, "sw_ctv_interval"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 395
    :goto_0
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 396
    const/16 v0, 0x63

    if-ge v10, v0, :cond_2

    .line 397
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #lapTime:J
    .end local v9           #laps:[J
    .end local v10           #numLaps:I
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #time:J
    :cond_0
    return-void

    .line 393
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #lapTime:J
    .restart local v9       #laps:[J
    .restart local v10       #numLaps:I
    .restart local v11       #prefs:Landroid/content/SharedPreferences;
    .restart local v12       #time:J
    :cond_1
    const-string v0, "sw_ctv_marker_time"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 400
    :cond_2
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private writeSharedPrefsReset(Z)V
    .locals 6
    .parameter "updateCircle"

    .prologue
    const/4 v1, 0x0

    .line 427
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 428
    return-void
.end method

.method private writeSharedPrefsStarted(JZ)V
    .locals 12
    .parameter "startTime"
    .parameter "updateCircle"

    .prologue
    .line 362
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 363
    if-eqz p3, :cond_0

    .line 364
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    .line 365
    .local v10, time:J
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 367
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 369
    .local v7, intervalStartTime:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 370
    move-wide v7, v10

    .line 371
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 372
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #intervalStartTime:J
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    .end local v10           #time:J
    :cond_0
    return-void
.end method

.method private writeSharedPrefsStopped(JZ)V
    .locals 14
    .parameter "elapsedTime"
    .parameter "updateCircle"

    .prologue
    .line 407
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 408
    if-eqz p3, :cond_0

    .line 409
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 410
    .local v12, time:J
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 412
    .local v11, prefs:Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 414
    .local v6, accumulatedTime:J
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 416
    .local v9, intervalStartTime:J
    sub-long v0, v12, v9

    add-long/2addr v6, v0

    .line 417
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 418
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_accum_time"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v0, "sw_ctv_current_interval"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 422
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    .end local v6           #accumulatedTime:J
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #intervalStartTime:J
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #time:J
    :cond_0
    return-void
.end method

.method private writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 9
    .parameter "startTime"
    .parameter "lapTimeElapsed"
    .parameter "elapsedTime"
    .parameter "state"
    .parameter "updateCircle"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 328
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 330
    const-string v3, "sw_start_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 333
    :cond_0
    if-eqz p2, :cond_2

    .line 334
    const-string v3, "sw_lap_num"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, numLaps:I
    if-nez v1, :cond_1

    .line 336
    iget v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 337
    add-int/lit8 v1, v1, 0x1

    .line 339
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 340
    add-int/lit8 v1, v1, 0x1

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v3, "sw_lap_num"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    .end local v1           #numLaps:I
    :cond_2
    if-eqz p3, :cond_3

    .line 345
    const-string v3, "sw_accum_time"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 348
    :cond_3
    if-eqz p4, :cond_4

    .line 349
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    .line 350
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    :cond_4
    :goto_0
    const-string v3, "sw_update_circle"

    invoke-interface {v0, v3, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    return-void

    .line 351
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 352
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 353
    :cond_6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 354
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 48
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 49
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 50
    iput-boolean v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 51
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 135
    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 136
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 137
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 138
    iget-boolean v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchService;->startActivity(Landroid/content/Intent;)V

    .line 144
    iput-boolean v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 146
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v9, 0x2

    .line 128
    :goto_0
    return v9

    .line 60
    :cond_0
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    if-nez v9, :cond_2

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readFromSharedPrefs()V

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, actionType:Ljava/lang/String;
    const-string v9, "message_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    .local v0, actionTime:J
    const-string v9, "show_notification"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 68
    .local v7, showNotif:Z
    move v8, v7

    .line 69
    .local v8, updateCircle:Z
    const-string v9, "start_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 70
    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 71
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStarted(JZ)V

    .line 72
    if-eqz v7, :cond_4

    .line 73
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 128
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 75
    :cond_4
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 77
    :cond_5
    const-string v9, "lap_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 78
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 79
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    add-long v4, v9, v11

    .line 80
    .local v4, lapTimeElapsed:J
    invoke-direct {p0, v4, v5, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsLap(JZ)V

    .line 81
    if-eqz v7, :cond_6

    .line 82
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 84
    :cond_6
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 86
    .end local v4           #lapTimeElapsed:J
    :cond_7
    const-string v9, "stop_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 87
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v11, v0, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 88
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStopped(JZ)V

    .line 89
    if-eqz v7, :cond_8

    .line 90
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long v9, v0, v9

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 92
    :cond_8
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 94
    :cond_9
    const-string v9, "reset_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 95
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 96
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 98
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->stopSelf()V

    goto/16 :goto_1

    .line 99
    :cond_a
    const-string v9, "reset_and_launch_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 100
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 101
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 103
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 104
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->stopSelf()V

    goto/16 :goto_1

    .line 105
    :cond_b
    const-string v9, "share_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 106
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 107
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v6, shareIntent:Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/stopwatch/Stopwatches;->getShareTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;J[J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 114
    .local v3, chooserIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 116
    .end local v3           #chooserIntent:Landroid/content/Intent;
    .end local v6           #shareIntent:Landroid/content/Intent;
    :cond_c
    const-string v9, "show_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 119
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->showSavedNotification()Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->stopSelf()V

    goto/16 :goto_1

    .line 122
    :cond_d
    const-string v9, "kill_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v10, 0x7ffffffe

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
