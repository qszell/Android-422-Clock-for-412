.class Lcom/android/deskclock/ClockFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/4 v1, 0x1

    .line 68
    .local v1, changed:Z
    :goto_0
    if-nez v1, :cond_1

    const-string v2, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$000(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/deskclock/ClockFragment;->access$100(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->hasHomeCity()Z

    move-result v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v3}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->needHomeCity()Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 73
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->reloadData(Landroid/content/Context;)V

    .line 78
    :goto_1
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 80
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->notifyDataSetChanged()V

    .line 84
    :cond_2
    if-nez v1, :cond_3

    const-string v2, "com.android.deskclock.ALARM_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/ClockFragment;->access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    :cond_4
    if-eqz v1, :cond_5

    .line 89
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {v3}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$400(Lcom/android/deskclock/ClockFragment;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/deskclock/Utils;->refreshAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v3

    #setter for: Lcom/android/deskclock/ClockFragment;->mQuarterlyIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/deskclock/ClockFragment;->access$402(Lcom/android/deskclock/ClockFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 91
    :cond_5
    return-void

    .line 65
    .end local v1           #changed:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 75
    .restart local v1       #changed:Z
    :cond_7
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$1;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
