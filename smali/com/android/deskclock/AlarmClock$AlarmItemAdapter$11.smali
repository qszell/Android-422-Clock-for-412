.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 872
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 874
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v1, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    :goto_0
    return-void

    .line 877
    :cond_0
    if-eqz v0, :cond_1

    .line 878
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 882
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/Alarm;

    iput-boolean v0, v1, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 883
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/Alarm;

    const/4 v3, 0x0

    #calls: Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/AlarmClock;->access$1200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_0

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2200(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_1
.end method
