.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    .line 727
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
