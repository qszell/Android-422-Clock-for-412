.class Lcom/android/deskclock/AlarmClock$6;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$6;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClock;->access$500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock;->access$402(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;

    .line 1166
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #setter for: Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z
    invoke-static {v0, v2}, Lcom/android/deskclock/AlarmClock;->access$602(Lcom/android/deskclock/AlarmClock;Z)Z

    .line 1167
    return-void
.end method
