.class Lcom/android/deskclock/LabelDialogFragment$1;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/LabelDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/LabelDialogFragment;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$timer:Lcom/android/deskclock/timer/TimerObj;


# direct methods
.method constructor <init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$1;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    iput-object p2, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$alarm:Lcom/android/deskclock/Alarm;

    iput-object p3, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$timer:Lcom/android/deskclock/timer/TimerObj;

    iput-object p4, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$tag:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 90
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/LabelDialogFragment$1;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    iget-object v1, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$timer:Lcom/android/deskclock/timer/TimerObj;

    iget-object v3, p0, Lcom/android/deskclock/LabelDialogFragment$1;->val$tag:Ljava/lang/String;

    #calls: Lcom/android/deskclock/LabelDialogFragment;->set(Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/LabelDialogFragment;->access$000(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
