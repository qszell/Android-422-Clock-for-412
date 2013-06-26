.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "compoundButton"
    .parameter "checked"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-boolean v0, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eq p2, v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V
    invoke-static {v0, v1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    .line 646
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iput-boolean p2, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 647
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-boolean v2, v2, Lcom/android/deskclock/Alarm;->enabled:Z

    #calls: Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClock;->access$1200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_0
.end method
