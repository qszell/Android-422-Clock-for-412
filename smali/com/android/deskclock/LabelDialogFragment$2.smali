.class Lcom/android/deskclock/LabelDialogFragment$2;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$2;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/deskclock/LabelDialogFragment$2;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-virtual {v0}, Lcom/android/deskclock/LabelDialogFragment;->dismiss()V

    .line 103
    return-void
.end method
