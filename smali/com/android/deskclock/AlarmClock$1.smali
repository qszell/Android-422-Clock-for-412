.class Lcom/android/deskclock/AlarmClock$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;


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
    .line 141
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipe(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    .line 146
    .local v0, itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$000(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->removeSelectedId(I)V

    .line 147
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    #calls: Lcom/android/deskclock/AlarmClock;->updateActionMode()V
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$100(Lcom/android/deskclock/AlarmClock;)V

    .line 148
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmClock;->access$200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V

    .line 149
    return-void
.end method
