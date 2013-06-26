.class Lcom/android/deskclock/AlarmClock$5;
.super Landroid/os/AsyncTask;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/deskclock/Alarm;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, [Lcom/android/deskclock/Alarm;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$5;->doInBackground([Lcom/android/deskclock/Alarm;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/deskclock/Alarm;)Ljava/lang/Void;
    .locals 6
    .parameter "alarms"

    .prologue
    .line 1152
    move-object v1, p1

    .local v1, arr$:[Lcom/android/deskclock/Alarm;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1153
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    iget v5, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v4, v5}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 1152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1155
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
