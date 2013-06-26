.class Lcom/android/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmInitReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 50
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/deskclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 53
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "AlarmInitReceiver - Reset timers and clear stopwatch data"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerObj;->resetTimersInSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 57
    invoke-static {v0}, Lcom/android/deskclock/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 59
    const-string v1, "vol_def_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "AlarmInitReceiver - resetting volume button default"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    #calls: Lcom/android/deskclock/AlarmInitReceiver;->switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmInitReceiver;->access$000(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/SharedPreferences;)V

    .line 65
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 67
    const-string v1, "AlarmInitReceiver finished"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    return-void
.end method
