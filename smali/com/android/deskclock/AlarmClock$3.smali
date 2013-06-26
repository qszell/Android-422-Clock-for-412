.class Lcom/android/deskclock/AlarmClock$3;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$3;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$3;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$3;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    #calls: Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClock;->access$500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    .line 166
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$3;->this$0:Lcom/android/deskclock/AlarmClock;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock;->access$402(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;

    .line 167
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$3;->this$0:Lcom/android/deskclock/AlarmClock;

    #setter for: Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z
    invoke-static {v0, v2}, Lcom/android/deskclock/AlarmClock;->access$602(Lcom/android/deskclock/AlarmClock;Z)Z

    .line 168
    return-void
.end method
