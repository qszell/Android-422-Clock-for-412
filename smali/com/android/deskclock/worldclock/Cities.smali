.class public Lcom/android/deskclock/worldclock/Cities;
.super Ljava/lang/Object;
.source "Cities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCitiesFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/HashMap;
    .locals 6
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-string v4, "number_of_cities"

    const/4 v5, -0x1

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 48
    .local v3, size:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/deskclock/worldclock/CityObj;>;"
    if-lez v3, :cond_1

    .line 50
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 51
    new-instance v2, Lcom/android/deskclock/worldclock/CityObj;

    invoke-direct {v2, p0, v1}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Landroid/content/SharedPreferences;I)V

    .line 52
    .local v2, o:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v4, v2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 53
    iget-object v4, v2, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1           #i:I
    .end local v2           #o:Lcom/android/deskclock/worldclock/CityObj;
    :cond_1
    return-object v0
.end method

.method public static saveCitiesToSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/HashMap;)V
    .locals 7
    .parameter "prefs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, cities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/deskclock/worldclock/CityObj;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 34
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "number_of_cities"

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 36
    .local v1, col:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/deskclock/worldclock/CityObj;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 37
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/deskclock/worldclock/CityObj;>;"
    const/4 v2, 0x0

    .line 38
    .local v2, count:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 40
    .local v0, c:Lcom/android/deskclock/worldclock/CityObj;
    invoke-virtual {v0, v3, v2}, Lcom/android/deskclock/worldclock/CityObj;->saveCityToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    .end local v0           #c:Lcom/android/deskclock/worldclock/CityObj;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method
