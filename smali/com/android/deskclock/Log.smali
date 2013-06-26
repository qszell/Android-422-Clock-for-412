.class public Lcom/android/deskclock/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 42
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "logMe"
    .parameter "ex"

    .prologue
    .line 46
    const-string v0, "AlarmClock"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millis"

    .prologue
    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS/E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 38
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 34
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 50
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 54
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
