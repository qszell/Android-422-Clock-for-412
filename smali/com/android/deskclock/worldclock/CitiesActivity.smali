.class public Lcom/android/deskclock/worldclock/CitiesActivity;
.super Landroid/app/Activity;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

.field private mCalendar:Ljava/util/Calendar;

.field private mCitiesList:Landroid/widget/ListView;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mUserSelectedCities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/deskclock/worldclock/CitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 221
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->setContentView(I)V

    .line 222
    const v1, 0x7f0e0021

    invoke-virtual {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    .line 223
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    const/high16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 225
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 226
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/worldclock/Cities;->readCitiesFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    .line 228
    new-instance v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity;Landroid/content/Context;Ljava/util/HashMap;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    .line 229
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitiesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 231
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "b"
    .parameter "checked"

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 294
    .local v0, c:Lcom/android/deskclock/worldclock/CityObj;
    if-eqz p2, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 303
    const v2, 0x7f0e0025

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 304
    .local v0, b:Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 305
    .local v1, checked:Z
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 306
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 307
    return-void

    .line 306
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitiesActivity;->updateLayout()V

    .line 218
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitiesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    const v1, 0x7f0e009d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 286
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 258
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    goto :goto_0

    .line 271
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const v2, 0x4008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0e009c -> :sswitch_0
        0x7f0e009d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/deskclock/worldclock/Cities;->saveCitiesToSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/HashMap;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 242
    :cond_0
    return-void
.end method
