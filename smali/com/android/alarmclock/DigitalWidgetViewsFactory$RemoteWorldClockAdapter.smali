.class Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;
.super Lcom/android/deskclock/worldclock/WorldClockAdapter;
.source "DigitalWidgetViewsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalWidgetViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteWorldClockAdapter"
.end annotation


# instance fields
.field private final mFontSize:F

.field final synthetic this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;


# direct methods
.method public constructor <init>(Lcom/android/alarmclock/DigitalWidgetViewsFactory;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    .line 63
    invoke-direct {p0, p2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFontSize:F

    .line 65
    return-void
.end method

.method private hideView(Landroid/widget/RemoteViews;IIII)V
    .locals 1
    .parameter "clock"
    .parameter "clockId1"
    .parameter "clockId2"
    .parameter "labelId"
    .parameter "dayId"

    .prologue
    const/4 v0, 0x4

    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 129
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    invoke-virtual {p1, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    invoke-virtual {p1, p5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    return-void
.end method

.method private updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;IIII)V
    .locals 14
    .parameter "clock"
    .parameter "cityObj"
    .parameter "clockId1"
    .parameter "clockId2"
    .parameter "labelId"
    .parameter "dayId"

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 96
    .local v5, now:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 98
    .local v4, myDayOfWeek:I
    iget-object v7, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    .line 99
    .local v2, cityInDb:Lcom/android/deskclock/worldclock/CityObj;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    .line 100
    .local v3, cityTZ:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 101
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 103
    .local v1, cityDayOfWeek:I
    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    #getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$100(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F

    move-result v7

    iget-object v8, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    #getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mListScale:F
    invoke-static {v8}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$200(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 104
    .local v6, scale:F
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFontSize:F

    mul-float/2addr v8, v6

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 105
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFontSize:F

    mul-float/2addr v8, v6

    move/from16 v0, p4

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 106
    const-string v7, "setTimeZone"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v7, "setTimeZone"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    move/from16 v0, p4

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->getCityName(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    if-eq v4, v1, :cond_1

    .line 113
    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    #getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d008e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v5, v11, v12, v13}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 116
    const/4 v7, 0x0

    move/from16 v0, p6

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 121
    :goto_1
    const/4 v7, 0x0

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 122
    const/4 v7, 0x0

    move/from16 v0, p4

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    const/4 v7, 0x0

    move/from16 v0, p5

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 124
    return-void

    .line 99
    .end local v1           #cityDayOfWeek:I
    .end local v3           #cityTZ:Ljava/lang/String;
    .end local v6           #scale:F
    :cond_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    .restart local v1       #cityDayOfWeek:I
    .restart local v3       #cityTZ:Ljava/lang/String;
    .restart local v6       #scale:F
    :cond_1
    const/16 v7, 0x8

    move/from16 v0, p6

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 12
    .parameter "position"

    .prologue
    const v11, 0x7f0e0099

    const v10, 0x7f0e0098

    const v9, 0x7f0e0097

    const v8, 0x7f0e0096

    .line 69
    mul-int/lit8 v7, p1, 0x2

    .line 70
    .local v7, index:I
    if-ltz v7, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    #getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f04002c

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v1, views:Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    aget-object v2, v0, v7

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    const v3, 0x7f0e0092

    const v4, 0x7f0e0093

    const v5, 0x7f0e0094

    const v6, 0x7f0e0095

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;IIII)V

    .line 83
    add-int/lit8 v0, v7, 0x1

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    add-int/lit8 v2, v7, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    move-object v0, p0

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;IIII)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->hideView(Landroid/widget/RemoteViews;IIII)V

    goto :goto_0
.end method
