.class public Lcom/android/deskclock/timer/TimerAlertFullScreen;
.super Landroid/app/Activity;
.source "TimerAlertFullScreen.java"

# interfaces
.implements Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getFragment()Lcom/android/deskclock/timer/TimerFragment;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerFragment;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 78
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 77
    .end local v0           #up:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0       #up:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->stopAllTimesUpTimers()V

    goto :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 111
    const v1, 0x7f0e007a

    invoke-virtual {p0, v1}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    .local v0, viewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0e007a

    const/4 v5, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v4, 0x7f040026

    invoke-virtual {p0, v4}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->setContentView(I)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 49
    .local v3, win:Landroid/view/Window;
    const/high16 v4, 0x48

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 53
    const v4, 0x200081

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 59
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {v1}, Lcom/android/deskclock/timer/TimerFragment;-><init>()V

    .line 63
    .local v1, timerFragment:Lcom/android/deskclock/timer/TimerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "times_up"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/android/deskclock/timer/TimerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "timer"

    invoke-virtual {v4, v6, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 72
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #timerFragment:Lcom/android/deskclock/timer/TimerFragment;
    :cond_0
    return-void
.end method

.method public onEmptyList()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->onListChanged()V

    .line 131
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->finish()V

    .line 132
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v0

    .line 103
    .local v0, timerFragment:Lcom/android/deskclock/timer/TimerFragment;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment;->restartAdapter()V

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 119
    return-void
.end method

.method protected stopAllTimesUpTimers()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v0

    .line 123
    .local v0, timerFragment:Lcom/android/deskclock/timer/TimerFragment;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment;->stopAllTimesUpTimers()V

    .line 126
    :cond_0
    return-void
.end method
