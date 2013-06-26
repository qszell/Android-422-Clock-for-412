.class public Lcom/android/deskclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAlarmPref:Lcom/android/deskclock/AlarmPreference;

.field private mEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mHour:I

.field private mId:I

.field private mLabel:Landroid/widget/EditText;

.field private mMinute:I

.field private mOriginalAlarm:Lcom/android/deskclock/Alarm;

.field private mRepeatPref:Lcom/android/deskclock/RepeatPreference;

.field private mTimePref:Landroid/preference/Preference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAndExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    return v0
.end method

.method private buildAlarmFromUi()Lcom/android/deskclock/Alarm;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 295
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->id:I

    .line 296
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 297
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->hour:I

    .line 298
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 299
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 300
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 301
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 303
    return-object v0
.end method

.method private deleteAlarm()V
    .locals 3

    .prologue
    .line 307
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    .line 324
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/deskclock/SetAlarm$6;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$6;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 354
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 355
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 356
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 357
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 359
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 363
    .local v3, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 367
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 371
    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 372
    .local v8, dispDays:Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 373
    .local v9, dispHour:Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 375
    .local v10, dispMinute:Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 379
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 380
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 359
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f0d001b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f0d001c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 363
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f0d001f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f0d0020

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 367
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f0d001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f0d001e

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 371
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 372
    .restart local v8       #dispDays:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 373
    .restart local v9       #dispHour:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 375
    .restart local v10       #dispMinute:Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method private revert()V
    .locals 3

    .prologue
    .line 327
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 329
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 330
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    goto :goto_0
.end method

.method private saveAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 4
    .parameter "alarm"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object p1

    .line 282
    :cond_0
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 283
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 286
    .local v0, time:J
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v2, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 290
    :goto_0
    return-wide v0

    .line 288
    .end local v0           #time:J
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .restart local v0       #time:J
    goto :goto_0
.end method

.method private saveAndExit()V
    .locals 3

    .prologue
    .line 341
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 342
    .local v0, time:J
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    .line 346
    return-void
.end method

.method private showTimePicker()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmUtils;->showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/Alarm;)V

    .line 258
    return-void
.end method

.method private updatePrefs(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 229
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 230
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 233
    iget v0, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 234
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/RepeatPreference;->setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 235
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 238
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 239
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v3}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAndExit()V

    .line 254
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v10, 0x7f04001b

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040004

    invoke-virtual {v10, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 70
    .local v6, label:Landroid/widget/EditText;
    const v10, 0x102000a

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 71
    .local v7, list:Landroid/widget/ListView;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    const/high16 v10, 0x7f06

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->addPreferencesFromResource(I)V

    .line 78
    iput-object v6, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    .line 79
    const-string v10, "enabled"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v10, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v10, "time"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 82
    const-string v10, "alarm"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/deskclock/AlarmPreference;

    iput-object v10, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    .line 83
    iget-object v10, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v10, p0}, Lcom/android/deskclock/AlarmPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v10, "vibrate"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v10, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v10, "vibrator"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 87
    .local v9, v:Landroid/os/Vibrator;
    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-nez v10, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_0
    const-string v10, "setRepeat"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/deskclock/RepeatPreference;

    iput-object v10, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    .line 91
    iget-object v10, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v10, p0}, Lcom/android/deskclock/RepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 94
    .local v4, i:Landroid/content/Intent;
    const-string v10, "intent.extra.alarm"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .line 96
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    if-nez v1, :cond_1

    .line 98
    new-instance v1, Lcom/android/deskclock/Alarm;

    .end local v1           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v1}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 100
    .restart local v1       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    iput-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 104
    iget-object v10, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v10}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 111
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 112
    const/16 v10, 0xa

    invoke-virtual {v0, v12, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 116
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f04001c

    invoke-virtual {v5, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, customActionBarView:Landroid/view/View;
    const/16 v10, 0x10

    const/16 v11, 0x1a

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 121
    const v10, 0x7f0e0051

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 122
    .local v8, saveMenuItem:Landroid/view/View;
    new-instance v10, Lcom/android/deskclock/SetAlarm$1;

    invoke-direct {v10, p0}, Lcom/android/deskclock/SetAlarm$1;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .end local v3           #customActionBarView:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #saveMenuItem:Landroid/view/View;
    :cond_2
    const v10, 0x7f0e0050

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 132
    .local v2, b:Landroid/widget/Button;
    if-eqz v2, :cond_3

    .line 133
    new-instance v10, Lcom/android/deskclock/SetAlarm$2;

    invoke-direct {v10, p0}, Lcom/android/deskclock/SetAlarm$2;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_3
    const v10, 0x7f0e004e

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #b:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 144
    .restart local v2       #b:Landroid/widget/Button;
    if-eqz v2, :cond_4

    .line 145
    new-instance v10, Lcom/android/deskclock/SetAlarm$3;

    invoke-direct {v10, p0}, Lcom/android/deskclock/SetAlarm$3;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_4
    const v10, 0x7f0e004f

    invoke-virtual {p0, v10}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #b:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 153
    .restart local v2       #b:Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 154
    iget v10, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 155
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    :cond_5
    :goto_0
    return-void

    .line 158
    :cond_6
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    new-instance v10, Lcom/android/deskclock/SetAlarm$4;

    invoke-direct {v10, p0}, Lcom/android/deskclock/SetAlarm$4;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onDialogTimeSet(Lcom/android/deskclock/Alarm;II)V
    .locals 2
    .parameter "alarm"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 263
    iput p2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 264
    iput p3, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 265
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 267
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00a2

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 216
    sget-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/deskclock/SetAlarm$5;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/SetAlarm$5;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 248
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v2, "originalAlarm"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 195
    .local v0, alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 196
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 199
    :cond_0
    const-string v2, "currentAlarm"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #alarmFromBundle:Lcom/android/deskclock/Alarm;
    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 200
    .restart local v0       #alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0, v0}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 204
    :cond_1
    const-string v2, "timePickerBundle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 205
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 208
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "originalAlarm"

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v0, "currentAlarm"

    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    return-void
.end method
