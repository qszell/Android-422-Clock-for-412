.class Lcom/android/deskclock/worldclock/WorldClockAdapter$1;
.super Ljava/lang/Object;
.source "WorldClockAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/worldclock/WorldClockAdapter;->sortList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/worldclock/WorldClockAdapter;

.field final synthetic val$now:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/deskclock/worldclock/WorldClockAdapter;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->this$0:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    iput-object p2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->val$now:Ljava/util/Date;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private safeCityNameCompare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I
    .locals 3
    .parameter "city1"
    .parameter "city2"

    .prologue
    .line 133
    iget-object v0, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    const/4 v0, -0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->this$0:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    #getter for: Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCollator:Ljava/text/Collator;
    invoke-static {v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->access$000(Lcom/android/deskclock/worldclock/WorldClockAdapter;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 146
    move-object v0, p1

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .local v0, city1:Lcom/android/deskclock/worldclock/CityObj;
    move-object v1, p2

    .line 147
    check-cast v1, Lcom/android/deskclock/worldclock/CityObj;

    .line 148
    .local v1, city2:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v4, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->safeCityNameCompare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v4

    .line 161
    :goto_0
    return v4

    .line 150
    :cond_0
    iget-object v4, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 151
    const/4 v4, -0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, v1, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 153
    const/4 v4, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v4, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->val$now:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 157
    .local v2, gmOffset1:I
    iget-object v4, v1, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->val$now:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 158
    .local v3, gmOffset2:I
    if-ne v2, v3, :cond_3

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;->safeCityNameCompare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v4

    goto :goto_0

    .line 161
    :cond_3
    sub-int v4, v2, v3

    goto :goto_0
.end method
