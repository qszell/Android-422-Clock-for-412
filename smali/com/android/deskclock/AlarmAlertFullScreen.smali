.class public Lcom/android/deskclock/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;


# instance fields
.field private final LOG:Z

.field protected mAlarm:Lcom/android/deskclock/Alarm;

.field private mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

.field private mIsDocked:Z

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->LOG:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 72
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$1;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$2;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmAlertFullScreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    return-void
.end method

.method private dismiss(ZZ)V
    .locals 3
    .parameter "killed"
    .parameter "replaced"

    .prologue
    .line 260
    const-string v1, "AlarmAlertFullScreen - dismiss"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-string v1, " replaced"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 266
    if-nez p1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 269
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 272
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    if-nez p2, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 275
    :cond_1
    return-void

    .line 263
    :cond_2
    const-string v1, " killed"

    goto :goto_0

    :cond_3
    const-string v1, " dismissed by user"

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 254
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, titleText:Ljava/lang/String;
    const v2, 0x7f0e0007

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method private snooze()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 196
    const-string v0, "AlarmAlertFullScreen - snooze"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooze_duration"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xea60

    mul-int/2addr v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 206
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v3, v1, v2}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 211
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 212
    invoke-static {p0, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 216
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const-string v4, "cancel_snooze"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v4, "intent.extra.alarm"

    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/deskclock/DeskClock;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const-string v5, "intent.extra.alarm"

    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    const-string v5, "deskclock.select.tab"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v5

    .line 226
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001a

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080038

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v7, v7, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v7, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v2, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 239
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v5, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    const v1, 0x7f0d0019

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 247
    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 251
    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->ping()V

    .line 188
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 167
    const-string v2, "AlarmAlertFullScreen - updateLayout"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 170
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getLayoutResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->setContentView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 178
    const v2, 0x7f0e000c

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    iput-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    .line 179
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 180
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    .line 181
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 333
    .local v0, up:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmAlertFullScreen - dispatchKeyEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 361
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 331
    goto :goto_0

    .line 343
    .restart local v0       #up:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 344
    iget v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 346
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    goto :goto_1

    .line 350
    :pswitch_1
    invoke-direct {p0, v2, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(ZZ)V

    goto :goto_1

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f040001

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 369
    const-string v0, "AlarmAlertFullScreen - onBackPressed"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 295
    const-string v0, "AlarmAlertFullScreen - onConfigChanged"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "intent.extra.alarm"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/Alarm;

    iput-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 111
    const-string v5, "AlarmAlertFullScreen - onCreate"

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v5, :cond_0

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmAlertFullScreen - Alarm Id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v7}, Lcom/android/deskclock/Alarm;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "volume_button_setting"

    const-string v8, "0"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, vol:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    .line 124
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 125
    .local v4, win:Landroid/view/Window;
    const/high16 v5, 0x48

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "screen_off"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    const v5, 0x200081

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 138
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, ifilter:Landroid/content/IntentFilter;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, dockStatus:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 141
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    .line 146
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "alarm_killed"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v5, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_3
    move v5, v6

    .line 141
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    const-string v0, "AlarmAlertFullScreen.onDestroy()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 378
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 405
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    const-string v0, "AlarmAlert.OnNewIntent()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 287
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 289
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 290
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 383
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    .line 384
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 305
    const-string v0, "AlarmAlertFullScreen - onResume"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 310
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 311
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    if-eqz v0, :cond_2

    .line 316
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setRequestedOrientation(I)V

    .line 318
    :cond_2
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 389
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 399
    :pswitch_0
    const-string v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 391
    :pswitch_1
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-direct {p0, v2, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(ZZ)V

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x7f02002f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
