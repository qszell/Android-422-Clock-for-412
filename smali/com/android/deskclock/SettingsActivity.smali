.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    }
.end annotation


# static fields
.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SettingsActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    return-wide v0
.end method

.method private notifyHomeTimeZoneChanged()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 197
    const-string v5, "auto_silence"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 198
    .local v1, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, delay:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string v5, "clock_style"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 203
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v5, "automatic_home_clock"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, pref:Landroid/preference/Preference;
    move-object v5, v2

    .line 207
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 208
    .local v4, state:Z
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 211
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 212
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    const-string v5, "volume_button_setting"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 215
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    const-string v5, "snooze_duration"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/SnoozeLengthDialog;

    .line 219
    .local v3, snoozePref:Lcom/android/deskclock/SnoozeLengthDialog;
    invoke-virtual {v3}, Lcom/android/deskclock/SnoozeLengthDialog;->setSummary()V

    .line 220
    return-void
.end method

.method private updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .parameter "listPref"
    .parameter "delay"

    .prologue
    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 184
    const v1, 0x7f0d002b

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const v1, 0x7f0d002a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 277
    .local v5, resources:Landroid/content/res/Resources;
    const v9, 0x7f0a0015

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, ids:[Ljava/lang/String;
    const v9, 0x7f0a0014

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, labels:[Ljava/lang/String;
    array-length v9, v3

    array-length v10, v4

    if-eq v9, v10, :cond_0

    .line 280
    const-string v9, "Timezone ids and labels have different length!"

    invoke-static {v9}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 282
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v8, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/deskclock/SettingsActivity$TimeZoneRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v9, v3

    if-ge v0, v9, :cond_1

    .line 284
    new-instance v9, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    aget-object v10, v3, v0

    aget-object v11, v4, v0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;-><init>(Lcom/android/deskclock/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    const/4 v9, 0x2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/CharSequence;

    .line 289
    .local v7, timeZones:[[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 290
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    .line 291
    .local v6, row:Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    iget-object v10, v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mId:Ljava/lang/String;

    aput-object v10, v9, v0

    .line 292
    const/4 v9, 0x1

    aget-object v9, v7, v9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget-object v10, v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mDisplayName:Ljava/lang/String;

    aput-object v10, v9, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 294
    .end local v6           #row:Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    :cond_2
    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 86
    :cond_0
    const-string v2, "home_time_zone"

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 87
    .local v1, listPref:Landroid/preference/ListPreference;
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    .line 89
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    .line 92
    :cond_1
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 93
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    const v1, 0x7f0e009d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->finish()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 154
    const-string v5, "auto_silence"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 155
    check-cast v3, Landroid/preference/ListPreference;

    .local v3, listPref:Landroid/preference/ListPreference;
    move-object v0, p2

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, delay:Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 177
    .end local v0           #delay:Ljava/lang/String;
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 158
    .restart local p1
    .restart local p2
    :cond_1
    const-string v5, "clock_style"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 159
    check-cast v3, Landroid/preference/ListPreference;

    .line 160
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    .end local v2           #idx:I
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_2
    const-string v5, "home_time_zone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 163
    check-cast v3, Landroid/preference/ListPreference;

    .line 164
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 165
    .restart local v2       #idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 167
    .end local v2           #idx:I
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_3
    const-string v5, "automatic_home_clock"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 169
    .local v4, state:Z
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 170
    .local v1, homeTimeZone:Landroid/preference/Preference;
    if-nez v4, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 170
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 172
    .end local v1           #homeTimeZone:Landroid/preference/Preference;
    .end local v4           #state:Z
    .restart local p1
    :cond_5
    const-string v5, "volume_button_setting"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 173
    check-cast v3, Landroid/preference/ListPreference;

    .line 174
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 175
    .restart local v2       #idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 130
    const-string v2, "alarm_in_silent_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 131
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 132
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, ringerModeStreamTypes:I
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    and-int/lit8 v1, v1, -0x11

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const/4 v2, 0x1

    .line 149
    .end local v0           #pref:Landroid/preference/CheckBoxPreference;
    .end local v1           #ringerModeStreamTypes:I
    :goto_1
    return v2

    .line 139
    .restart local v0       #pref:Landroid/preference/CheckBoxPreference;
    .restart local v1       #ringerModeStreamTypes:I
    :cond_0
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 149
    .end local v0           #pref:Landroid/preference/CheckBoxPreference;
    .end local v1           #ringerModeStreamTypes:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 102
    return-void
.end method
