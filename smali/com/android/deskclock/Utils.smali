.class public Lcom/android/deskclock/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/deskclock/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/Utils;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static calculateRadiusOffset(FFF)F
    .locals 1
    .parameter "strokeSize"
    .parameter "diamondStrokeSize"
    .parameter "markerStrokeSize"

    .prologue
    .line 160
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static cancelAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "context"
    .parameter "quarterlyIntent"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 348
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 351
    :cond_0
    return-void
.end method

.method public static clearSwSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 181
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sw_start_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v4, "sw_accum_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v4, "sw_state"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v4, "sw_lap_num"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 186
    .local v3, lapNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw_lap_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    const-string v4, "sw_lap_num"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    return-void
.end method

.method public static dimClockView(ZLandroid/view/View;)V
    .locals 4
    .parameter "dim"
    .parameter "clockView"

    .prologue
    .line 386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 387
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p0, :cond_0

    const v1, 0x60ffffff

    :goto_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 391
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 392
    return-void

    .line 388
    :cond_0
    const v1, -0x3f000001

    goto :goto_0
.end method

.method private static getAlarmOnQuarterHour()J
    .locals 8

    .prologue
    const/16 v6, 0xc

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 321
    .local v3, nextQuarter:Ljava/util/Calendar;
    const/16 v4, 0xd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 322
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 323
    .local v2, minute:I
    rem-int/lit8 v4, v2, 0xf

    rsub-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 324
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 325
    .local v0, alarmOnQuarterHour:J
    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbf88

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 327
    :cond_0
    const-string v4, "quarterly alarm calculation error"

    invoke-static {v4}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 329
    :cond_1
    return-wide v0
.end method

.method public static getCityName(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)Ljava/lang/String;
    .locals 1
    .parameter "city"
    .parameter "dbCity"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getGrayColorId()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f0b0012

    return v0
.end method

.method public static getPressedColorId()I
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f0b0010

    return v0
.end method

.method public static getTimeNow()J
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadCitiesDataBase(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;
    .locals 11
    .parameter "c"

    .prologue
    .line 428
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 429
    .local v1, collator:Ljava/text/Collator;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 432
    .local v4, r:Landroid/content/res/Resources;
    const/high16 v7, 0x7f0a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, cities:[Ljava/lang/String;
    const v7, 0x7f0a0001

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, timezones:[Ljava/lang/String;
    const v7, 0x7f0a0002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, ids:[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v6

    if-ne v7, v8, :cond_0

    array-length v7, v3

    array-length v8, v0

    if-eq v7, v8, :cond_1

    .line 436
    :cond_0
    const-string v7, "City lists sizes are not the same, cannot use the data"

    invoke-static {v7}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 437
    const/4 v5, 0x0

    .line 451
    :goto_0
    return-object v5

    .line 439
    :cond_1
    array-length v7, v0

    new-array v5, v7, [Lcom/android/deskclock/worldclock/CityObj;

    .line 440
    .local v5, tempList:[Lcom/android/deskclock/worldclock/CityObj;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_2

    .line 441
    new-instance v7, Lcom/android/deskclock/worldclock/CityObj;

    aget-object v8, v0, v2

    aget-object v9, v6, v2

    aget-object v10, v3, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    :cond_2
    new-instance v7, Lcom/android/deskclock/Utils$1;

    invoke-direct {v7, v1}, Lcom/android/deskclock/Utils$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v5, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 6
    .parameter "context"
    .parameter "helpMenuItem"

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, helpUrlString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/deskclock/Utils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, fullUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 111
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static refreshAlarm(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "clock"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "next_alarm_formatted"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, nextAlarm:Ljava/lang/String;
    const v2, 0x7f0e0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 400
    .local v1, nextAlarmView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 401
    const v2, 0x7f0d0045

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d008f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static refreshAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "quarterlyIntent"

    .prologue
    .line 355
    invoke-static {p0, p1}, Lcom/android/deskclock/Utils;->cancelAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 356
    invoke-static {p0}, Lcom/android/deskclock/Utils;->startAlarmOnQuarterHour(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "digitalClock"
    .parameter "analogClock"
    .parameter "clockStyleKey"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 365
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 366
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, defaultClockStyle:Ljava/lang/String;
    invoke-interface {v2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, style:Ljava/lang/String;
    const-string v4, "analog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 372
    move-object v1, p2

    .line 379
    .local v1, returnView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 374
    .end local v1           #returnView:Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 376
    move-object v1, p1

    .restart local v1       #returnView:Landroid/view/View;
    goto :goto_0
.end method

.method public static showInUseNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, timerIntent:Landroid/content/Intent;
    const-string v1, "notif_in_use_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public static startAlarmOnQuarterHour(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 334
    if-eqz p0, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 337
    .local v6, quarterlyIntent:Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/deskclock/Utils;->getAlarmOnQuarterHour()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 342
    .end local v6           #quarterlyIntent:Landroid/app/PendingIntent;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .parameter "dateFormat"
    .parameter "dateFormatForAccessibility"
    .parameter "clock"

    .prologue
    .line 414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 415
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 417
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 419
    .local v2, newDate:Ljava/lang/CharSequence;
    const v3, 0x7f0e0034

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 420
    .local v1, dateDisplay:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 421
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 425
    :cond_0
    return-void
.end method

.method private static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "baseUri"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 124
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    sget-object v3, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 133
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    .line 136
    const-string v3, "version"

    sget-object v4, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 137
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name for context "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "version"

    sget-object v4, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method
