.class Lcom/android/deskclock/AlarmClock$4;
.super Landroid/os/AsyncTask;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 1135
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$4;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1135
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$4;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .parameter "ids"

    .prologue
    .line 1138
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1139
    .local v2, id:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$4;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-static {v4, v2}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    .end local v2           #id:I
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
