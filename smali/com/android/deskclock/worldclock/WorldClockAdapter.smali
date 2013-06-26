.class public Lcom/android/deskclock/worldclock/WorldClockAdapter;
.super Landroid/widget/BaseAdapter;
.source "WorldClockAdapter.java"


# instance fields
.field protected mCitiesDb:Ljava/util/HashMap;
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

.field protected mCitiesList:[Ljava/lang/Object;

.field private mClockStyle:Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCollator:Ljava/text/Collator;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadData(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/WorldClockAdapter;)Ljava/text/Collator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private addHomeCity()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->needHomeCity()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 94
    .local v3, sharedPref:Landroid/content/SharedPreferences;
    const-string v5, "home_time_zone"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, homeTZ:Ljava/lang/String;
    new-instance v0, Lcom/android/deskclock/worldclock/CityObj;

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v5, v1, v6}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, c:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 98
    .local v4, temp:[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 99
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 100
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v4, v5

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0           #c:Lcom/android/deskclock/worldclock/CityObj;
    .end local v1           #homeTZ:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #sharedPref:Landroid/content/SharedPreferences;
    .end local v4           #temp:[Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    :cond_1
    return-object v4
.end method

.method private sortList()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 131
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    new-instance v2, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter$1;-><init>(Lcom/android/deskclock/worldclock/WorldClockAdapter;Ljava/util/Date;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 165
    return-void
.end method

.method private updateView(Landroid/view/View;Lcom/android/deskclock/worldclock/CityObj;)V
    .locals 20
    .parameter "clock"
    .parameter "cityObj"

    .prologue
    .line 224
    const v13, 0x7f0e008d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 225
    .local v11, nameLayout:Landroid/view/View;
    const v13, 0x7f0e0023

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object v10, v13

    check-cast v10, Landroid/widget/TextView;

    .line 226
    .local v10, name:Landroid/widget/TextView;
    const v13, 0x7f0e008e

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object v7, v13

    check-cast v7, Landroid/widget/TextView;

    .line 227
    .local v7, dayOfWeek:Landroid/widget/TextView;
    const v13, 0x7f0e0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/deskclock/DigitalClock;

    move-object v8, v13

    check-cast v8, Lcom/android/deskclock/DigitalClock;

    .line 228
    .local v8, dclock:Lcom/android/deskclock/DigitalClock;
    const v13, 0x7f0e0033

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/deskclock/AnalogClock;

    move-object v3, v13

    check-cast v3, Lcom/android/deskclock/AnalogClock;

    .line 230
    .local v3, aclock:Lcom/android/deskclock/AnalogClock;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mClockStyle:Ljava/lang/String;

    const-string v14, "analog"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 231
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/android/deskclock/DigitalClock;->setVisibility(I)V

    .line 232
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/deskclock/AnalogClock;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/android/deskclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    .line 234
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    .line 240
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/worldclock/CityObj;

    .line 242
    .local v5, cityInDb:Lcom/android/deskclock/worldclock/CityObj;
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/android/deskclock/Utils;->getCityName(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 245
    .local v12, now:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 246
    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 248
    .local v9, myDayOfWeek:I
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    .line 249
    .local v6, cityTZ:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 250
    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 251
    .local v4, cityDayOfWeek:I
    if-eq v9, v4, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0d008e

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :goto_2
    return-void

    .line 236
    .end local v4           #cityDayOfWeek:I
    .end local v5           #cityInDb:Lcom/android/deskclock/worldclock/CityObj;
    .end local v6           #cityTZ:Ljava/lang/String;
    .end local v9           #myDayOfWeek:I
    .end local v12           #now:Ljava/util/Calendar;
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/deskclock/DigitalClock;->setVisibility(I)V

    .line 237
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Lcom/android/deskclock/AnalogClock;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/android/deskclock/DigitalClock;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .restart local v5       #cityInDb:Lcom/android/deskclock/worldclock/CityObj;
    .restart local v9       #myDayOfWeek:I
    .restart local v12       #now:Ljava/util/Calendar;
    :cond_1
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    goto :goto_1

    .line 256
    .restart local v4       #cityDayOfWeek:I
    .restart local v6       #cityTZ:Ljava/lang/String;
    :cond_2
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "p"

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 191
    mul-int/lit8 v2, p1, 0x2

    .line 192
    .local v2, index:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 193
    :cond_0
    const/4 v4, 0x0

    .line 220
    :goto_0
    return-object v4

    .line 196
    :cond_1
    if-nez p2, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04002b

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 200
    :cond_2
    const v4, 0x7f0e0090

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, rightClock:Landroid/view/View;
    const v4, 0x7f0e008f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Lcom/android/deskclock/worldclock/CityObj;

    invoke-direct {p0, v5, v4}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->updateView(Landroid/view/View;Lcom/android/deskclock/worldclock/CityObj;)V

    .line 202
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 203
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/deskclock/worldclock/CityObj;

    invoke-direct {p0, v3, v4}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->updateView(Landroid/view/View;Lcom/android/deskclock/worldclock/CityObj;)V

    :goto_1
    move-object v4, p2

    .line 220
    goto :goto_0

    .line 208
    :cond_3
    const v4, 0x7f0e0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/DigitalClock;

    move-object v1, v4

    check-cast v1, Lcom/android/deskclock/DigitalClock;

    .line 209
    .local v1, dclock:Lcom/android/deskclock/DigitalClock;
    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/AnalogClock;

    move-object v0, v4

    check-cast v0, Lcom/android/deskclock/AnalogClock;

    .line 210
    .local v0, aclock:Lcom/android/deskclock/AnalogClock;
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mClockStyle:Ljava/lang/String;

    const-string v5, "analog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    invoke-virtual {v1, v8}, Lcom/android/deskclock/DigitalClock;->setVisibility(I)V

    .line 212
    invoke-virtual {v0, v6}, Lcom/android/deskclock/AnalogClock;->setVisibility(I)V

    .line 217
    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/deskclock/DigitalClock;->setVisibility(I)V

    .line 215
    invoke-virtual {v0, v8}, Lcom/android/deskclock/AnalogClock;->setVisibility(I)V

    goto :goto_2
.end method

.method public hasHomeCity()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public loadCitiesDb(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 78
    invoke-static {p1}, Lcom/android/deskclock/Utils;->loadCitiesDataBase(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v0

    .line 79
    .local v0, cities:[Lcom/android/deskclock/worldclock/CityObj;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public loadData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "clock_style"

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mClockStyle:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/android/deskclock/worldclock/Cities;->readCitiesFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->sortList()V

    .line 70
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->addHomeCity()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public needHomeCity()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 110
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v4, "automatic_home_clock"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const-string v4, "home_time_zone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, homeTZ:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 114
    .local v1, now:Ljava/util/Date;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    .line 117
    .end local v0           #homeTZ:Ljava/lang/String;
    .end local v1           #now:Ljava/util/Date;
    :cond_0
    return v3
.end method

.method public reloadData(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadData(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
