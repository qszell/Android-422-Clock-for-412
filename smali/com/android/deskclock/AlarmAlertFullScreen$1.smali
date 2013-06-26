.class Lcom/android/deskclock/AlarmAlertFullScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmAlertFullScreen - onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 79
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V
    invoke-static {v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(ZZ)V
    invoke-static {v3, v5, v5}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;ZZ)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v3, "intent.extra.alarm"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .line 85
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    const-string v3, "alarm_replaced"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    .local v2, replaced:Z
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v3, v3, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    iget v4, v1, Lcom/android/deskclock/Alarm;->id:I

    if-ne v3, v4, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v4, 0x1

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(ZZ)V
    invoke-static {v3, v4, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;ZZ)V

    goto :goto_0
.end method
