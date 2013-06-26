.class Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "AlarmTimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmTimePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmTimePickerDialogFragment;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    iput-object p2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    .local v1, activity:Landroid/app/Activity;
    instance-of v2, v1, Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 77
    check-cast v0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;

    .line 79
    .local v0, act:Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v3, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    #getter for: Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mPicker:Lcom/android/deskclock/TimePicker;
    invoke-static {v3}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->access$000(Lcom/android/deskclock/AlarmTimePickerDialogFragment;)Lcom/android/deskclock/TimePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/TimePicker;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    #getter for: Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mPicker:Lcom/android/deskclock/TimePicker;
    invoke-static {v4}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->access$000(Lcom/android/deskclock/AlarmTimePickerDialogFragment;)Lcom/android/deskclock/TimePicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/TimePicker;->getMinutes()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;->onDialogTimeSet(Lcom/android/deskclock/Alarm;II)V

    .line 84
    .end local v0           #act:Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->dismiss()V

    .line 85
    return-void

    .line 81
    :cond_0
    const-string v2, "Error! Activities that use AlarmTimePickerDialogFragment must implement AlarmTimePickerDialogHandler"

    invoke-static {v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
