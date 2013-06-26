.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;
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
    .line 887
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/Alarm;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V

    goto :goto_0
.end method
