.class public Lcom/android/deskclock/ClockFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "ClockFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

.field private mAnalogClock:Landroid/view/View;

.field private mButtons:Landroid/view/View;

.field private mButtonsHidden:Z

.field private mClockFrame:Landroid/view/View;

.field private mClockStyle:Ljava/lang/String;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDefaultClockStyle:Ljava/lang/String;

.field private mDigitalClock:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mList:Landroid/widget/ListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQuarterlyIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    .line 61
    new-instance v0, Lcom/android/deskclock/ClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ClockFragment$1;-><init>(Lcom/android/deskclock/ClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/ClockFragment;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/deskclock/ClockFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 103
    const v3, 0x7f04000c

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0e002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mButtons:Landroid/view/View;

    .line 105
    if-eqz p3, :cond_0

    .line 106
    const-string v3, "buttons_hidden"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    .line 108
    :cond_0
    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    .line 109
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const v3, 0x7f040008

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, headerView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 112
    const v3, 0x7f040019

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    .line 113
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    const v4, 0x7f0e0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    .line 114
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    const v3, 0x7f040007

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, footerView:Landroid/view/View;
    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 119
    new-instance v3, Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/deskclock/worldclock/WorldClockAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    .line 120
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/android/deskclock/ClockFragment$2;

    invoke-direct {v4, p0}, Lcom/android/deskclock/ClockFragment$2;-><init>(Lcom/android/deskclock/ClockFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 153
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDefaultClockStyle:Ljava/lang/String;

    .line 154
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->cancelAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 160
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    const/high16 v2, 0x7f0d

    invoke-virtual {p0, v2}, Lcom/android/deskclock/ClockFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    .line 162
    const v2, 0x7f0d0001

    invoke-virtual {p0, v2}, Lcom/android/deskclock/ClockFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Utils;->startAlarmOnQuarterHour(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;

    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.deskclock.ALARM_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "com.android.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mButtons:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 178
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 180
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->reloadData(Landroid/content/Context;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Landroid/view/View;

    const-string v5, "clock_style"

    invoke-static {v2, v3, v4, v5}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, clockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    if-ne v0, v2, :cond_2

    const-string v2, "digital"

    :goto_1
    iput-object v2, p0, Lcom/android/deskclock/ClockFragment;->mClockStyle:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    return-void

    .line 175
    .end local v0           #clockView:Landroid/view/View;
    :cond_1
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 185
    .restart local v0       #clockView:Landroid/view/View;
    :cond_2
    const-string v2, "analog"

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 203
    const-string v0, "buttons_hidden"

    iget-boolean v1, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    invoke-super {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 224
    const-string v0, "clock_style"

    if-ne p2, v0, :cond_0

    .line 225
    const-string v0, "clock_style"

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDefaultClockStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockStyle:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->notifyDataSetChanged()V

    .line 228
    :cond_0
    return-void
.end method
