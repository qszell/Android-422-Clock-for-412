.class public Lcom/android/deskclock/ScreensaverActivity;
.super Landroid/app/Activity;
.source "ScreensaverActivity.java"


# instance fields
.field private mAnalogClock:Landroid/view/View;

.field private mClockStyle:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDigitalClock:Landroid/view/View;

.field private final mFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

.field private mPluggedIn:Z

.field private mQuarterlyIntent:Landroid/app/PendingIntent;

.field private mSaverView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    .line 54
    const v0, 0x480081

    iput v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mFlags:I

    .line 59
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ScreensaverActivity$1;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/deskclock/ScreensaverActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/ScreensaverActivity;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/ScreensaverActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private layoutClockSaver()V
    .locals 3

    .prologue
    .line 173
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverActivity;->setContentView(I)V

    .line 174
    const v0, 0x7f0e0013

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    .line 175
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mAnalogClock:Landroid/view/View;

    .line 176
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setClockStyle()V

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 179
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 180
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->registerViews(Landroid/view/View;Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private setClockStyle()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mAnalogClock:Landroid/view/View;

    const-string v2, "clock_style"

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 166
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const-string v0, "digital"

    :goto_0
    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mClockStyle:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    .line 170
    return-void

    .line 167
    :cond_0
    const-string v0, "analog"

    goto :goto_0
.end method

.method private setWakeLock()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/deskclock/ScreensaverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 154
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 155
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 156
    iget-boolean v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    if-eqz v2, :cond_0

    .line 157
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x480081

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 160
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    return-void

    .line 159
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480082

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->layoutClockSaver()V

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->cancelAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/deskclock/ScreensaverActivity;->finish()V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/deskclock/ScreensaverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, chargingIntent:Landroid/content/Intent;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, plugged:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    .line 113
    const/high16 v2, 0x7f0d

    invoke-virtual {p0, v2}, Lcom/android/deskclock/ScreensaverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    .line 114
    const v2, 0x7f0d0001

    invoke-virtual {p0, v2}, Lcom/android/deskclock/ScreensaverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V

    .line 117
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->layoutClockSaver()V

    .line 118
    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    invoke-static {p0}, Lcom/android/deskclock/Utils;->startAlarmOnQuarterHour(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;

    .line 121
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/ScreensaverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/deskclock/ScreensaverActivity;->finish()V

    .line 150
    return-void
.end method
