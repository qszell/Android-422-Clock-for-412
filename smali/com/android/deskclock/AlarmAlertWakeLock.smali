.class Lcom/android/deskclock/AlarmAlertWakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertWakeLock.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static acquireScreenCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    sget-object v1, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 50
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    sget-object v1, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 33
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    :cond_0
    return-void
.end method
