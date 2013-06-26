.class Lcom/android/deskclock/ScreensaverActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreensaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 64
    .local v0, changed:Z
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #setter for: Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z
    invoke-static {v1, v2}, Lcom/android/deskclock/ScreensaverActivity;->access$002(Lcom/android/deskclock/ScreensaverActivity;Z)Z

    .line 66
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #calls: Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$100(Lcom/android/deskclock/ScreensaverActivity;)V

    .line 76
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #getter for: Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/ScreensaverActivity;->access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    iget-object v3, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #getter for: Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/deskclock/ScreensaverActivity;->access$500(Lcom/android/deskclock/ScreensaverActivity;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/deskclock/Utils;->refreshAlarmOnQuarterHour(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v2

    #setter for: Lcom/android/deskclock/ScreensaverActivity;->mQuarterlyIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Lcom/android/deskclock/ScreensaverActivity;->access$502(Lcom/android/deskclock/ScreensaverActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 82
    :cond_2
    return-void

    .end local v0           #changed:Z
    :cond_3
    move v0, v1

    .line 62
    goto :goto_0

    .line 67
    .restart local v0       #changed:Z
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #setter for: Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z
    invoke-static {v2, v1}, Lcom/android/deskclock/ScreensaverActivity;->access$002(Lcom/android/deskclock/ScreensaverActivity;Z)Z

    .line 69
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #calls: Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$100(Lcom/android/deskclock/ScreensaverActivity;)V

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-virtual {v1}, Lcom/android/deskclock/ScreensaverActivity;->finish()V

    goto :goto_1

    .line 72
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_1

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #getter for: Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$200(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #getter for: Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    #getter for: Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/ScreensaverActivity;->access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1
.end method
