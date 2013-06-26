.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;
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


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->showLabelDialog(Lcom/android/deskclock/Alarm;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock;->access$1500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V

    goto :goto_0
.end method
