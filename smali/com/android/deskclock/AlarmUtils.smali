.class public Lcom/android/deskclock/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 56
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 59
    return-void
.end method

.method public static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/SetAlarm;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method

.method public static showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/Alarm;)V
    .locals 4
    .parameter "manager"
    .parameter "alarm"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 32
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v3, "time_dialog"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 33
    .local v2, prev:Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 36
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 38
    invoke-static {p1}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->newInstance(Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    move-result-object v0

    .line 40
    .local v0, fragment:Lcom/android/deskclock/AlarmTimePickerDialogFragment;
    const-string v3, "time_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 41
    return-void
.end method
