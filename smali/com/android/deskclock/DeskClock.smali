.class public Lcom/android/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$OnTapListener;,
        Lcom/android/deskclock/DeskClock$TabsAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mClockTab:Landroid/app/ActionBar$Tab;

.field private mSelectedTab:I

.field private mStopwatchTab:Landroid/app/ActionBar$Tab;

.field private mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

.field private mTimerTab:Landroid/app/ActionBar$Tab;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 406
    return-void
.end method

.method private createTabs(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 116
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 123
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 126
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/ClockFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifySelectedPage(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 105
    new-instance v0, Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/deskclock/DeskClock$TabsAdapter;-><init>(Lcom/android/deskclock/DeskClock;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    .line 106
    iget v0, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->createTabs(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 110
    return-void
.end method

.method private setHomeTimeZone()V
    .locals 6

    .prologue
    .line 255
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 256
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "home_time_zone"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, homeTimeZone:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "home_time_zone"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    const-string v3, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting home time zone to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMenu(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 215
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 216
    .local v2, popupMenu:Landroid/widget/PopupMenu;
    new-instance v3, Lcom/android/deskclock/DeskClock$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/DeskClock$1;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 241
    const v3, 0x7f110004

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 243
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 244
    .local v1, menu:Landroid/view/Menu;
    const v3, 0x7f0e009d

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 248
    :cond_0
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 249
    return-void
.end method


# virtual methods
.method public clockButtonsOnClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e002c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iput v4, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v2, "selected_tab"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 148
    const-string v2, "deskclock.select.tab"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, tab:I
    if-eq v1, v3, :cond_1

    .line 150
    iput v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 153
    .end local v1           #tab:I
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 154
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->setHomeTimeZone()V

    .line 155
    return-void
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "timer"
    .parameter "label"
    .parameter "tag"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 476
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/deskclock/timer/TimerFragment;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Lcom/android/deskclock/timer/TimerFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    const/4 v2, -0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock;->setIntent(Landroid/content/Intent;)V

    .line 92
    const-string v1, "deskclock.select.tab"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, tab:I
    if-eq v0, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v1, "show_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    const-string v1, "notif_app_open"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v1, "kill_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    const-string v1, "notif_app_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    const-string v1, "notif_in_use_cancel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method public registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 271
    :cond_0
    return-void
.end method

.method public unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 277
    :cond_0
    return-void
.end method
