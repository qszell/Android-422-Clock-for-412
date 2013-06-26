.class Lcom/android/deskclock/AlarmTimePickerDialogFragment$1;
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


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmTimePickerDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$1;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment$1;->this$0:Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->dismiss()V

    .line 68
    return-void
.end method
