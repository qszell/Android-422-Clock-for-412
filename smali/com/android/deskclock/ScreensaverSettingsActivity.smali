.class public Lcom/android/deskclock/ScreensaverSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "ScreensaverSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 68
    const-string v3, "screensaver_clock_style"

    invoke-virtual {p0, v3}, Lcom/android/deskclock/ScreensaverSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 69
    .local v0, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string v3, "screensaver_night_mode"

    invoke-virtual {p0, v3}, Lcom/android/deskclock/ScreensaverSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .local v1, pref:Landroid/preference/Preference;
    move-object v3, v1

    .line 73
    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 74
    .local v2, state:Z
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/deskclock/ScreensaverSettingsActivity;->addPreferencesFromResource(I)V

    .line 47
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 57
    const-string v2, "screensaver_clock_style"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 58
    check-cast v1, Landroid/preference/ListPreference;

    .line 59
    .local v1, listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, idx:I
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    .end local v0           #idx:I
    .end local v1           #listPref:Landroid/preference/ListPreference;
    .end local p1
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 61
    .restart local p1
    .restart local p2
    :cond_1
    const-string v2, "screensaver_night_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverSettingsActivity;->refresh()V

    .line 53
    return-void
.end method
