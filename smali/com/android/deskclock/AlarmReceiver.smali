.class public Lcom/android/deskclock/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const v9, 0x7f02008c

    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 55
    const-string v1, "alarm_killed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    const-string v1, "alarm_killed_timeout"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/AlarmReceiver;->updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "cancel_snooze"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const-string v1, "intent.extra.alarm"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 68
    :cond_2
    if-eqz v0, :cond_3

    .line 69
    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v0}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 70
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 78
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "Unable to parse Alarm from intent."

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 75
    const-wide/16 v0, -0x1

    invoke-static {p1, v3, v0, v1}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    goto :goto_1

    .line 80
    :cond_4
    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "intent.extra.alarm_raw"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    array-length v2, v1

    invoke-virtual {v0, v1, v8, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 94
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    sget-object v1, Lcom/android/deskclock/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 98
    :cond_5
    if-nez v0, :cond_6

    .line 99
    const-string v0, "Failed to parse the alarm from the intent"

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :cond_6
    iget v1, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v1}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 108
    iget-object v1, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v1

    if-nez v1, :cond_7

    .line 109
    iget v1, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v1, v8}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 118
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received alarm set for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {v4, v5}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 122
    iget-wide v3, v0, Lcom/android/deskclock/Alarm;->time:J

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    .line 123
    const-string v0, "Ignoring stale alarm"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_7
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 129
    :cond_8
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    const-class v1, Lcom/android/deskclock/AlarmAlertFullScreen;

    .line 147
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    iget v3, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v3, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 160
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.deskclock.ALARM_SNOOZE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    iget v4, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v4, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 164
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.deskclock.ALARM_DISMISS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v5, "intent.extra.alarm"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget v5, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v5, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 170
    iget-wide v6, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    invoke-static {p1, v5}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 176
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x1080038

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 192
    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 196
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v1, "intent.extra.alarm"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x1004

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    iget v1, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v1, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 204
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 205
    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v1, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 217
    if-nez p2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v2, "intent.extra.alarm"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    iget v2, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v2, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 232
    invoke-virtual {p2, p1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 233
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02008c

    iget-wide v5, p2, Lcom/android/deskclock/Alarm;->time:J

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 235
    const v4, 0x7f0d0017

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 238
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 242
    iget v1, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 243
    iget v1, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 43
    .local v4, result:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 44
    .local v5, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    new-instance v0, Lcom/android/deskclock/AlarmReceiver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/AlarmReceiver$1;-><init>(Lcom/android/deskclock/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
