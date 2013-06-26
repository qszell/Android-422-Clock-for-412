.class Lcom/android/deskclock/AlarmClock$7;
.super Landroid/os/AsyncTask;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$showTimePicker:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    iput-boolean p3, p0, Lcom/android/deskclock/AlarmClock$7;->val$showTimePicker:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1172
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "aVoid"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    .line 1176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1172
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$7;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "aVoid"

    .prologue
    const/4 v3, 0x0

    .line 1181
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-boolean v1, v1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->popToast(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmClock;->access$2900(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V

    .line 1184
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$000(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setNewAlarm(I)V

    .line 1185
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    #calls: Lcom/android/deskclock/AlarmClock;->scrollToAlarm(I)V
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmClock;->access$3000(Lcom/android/deskclock/AlarmClock;I)V

    .line 1190
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$3100(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1191
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$000(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$3100(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1192
    iget-boolean v1, p0, Lcom/android/deskclock/AlarmClock$7;->val$showTimePicker:Z

    if-eqz v1, :cond_1

    .line 1193
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$7;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$7;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmUtils;->showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/Alarm;)V

    .line 1195
    :cond_1
    return-void
.end method
