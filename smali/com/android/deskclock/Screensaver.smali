.class public Lcom/android/deskclock/Screensaver;
.super Landroid/service/dreams/DreamService;
.source "Screensaver.java"


# instance fields
.field private mAnalogClock:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDigitalClock:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

.field private mSaverView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    .line 53
    return-void
.end method

.method private layoutClockSaver()V
    .locals 3

    .prologue
    .line 104
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->setContentView(I)V

    .line 105
    const v0, 0x7f0e0013

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/view/View;

    .line 106
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->setClockStyle()V

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->registerViews(Landroid/view/View;Landroid/view/View;)V

    .line 112
    return-void
.end method

.method private setClockStyle()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/view/View;

    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Landroid/view/View;

    const-string v4, "screensaver_clock_style"

    invoke-static {p0, v2, v3, v4}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 96
    const v2, 0x7f0e0032

    invoke-virtual {p0, v2}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    .line 97
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "screensaver_night_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 99
    .local v0, dimNightMode:Z
    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    .line 100
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/deskclock/Screensaver;->setScreenBright(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->setInteractive(Z)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->setFullscreen(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->layoutClockSaver()V

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->layoutClockSaver()V

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 59
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
