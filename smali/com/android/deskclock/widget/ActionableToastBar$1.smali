.class Lcom/android/deskclock/widget/ActionableToastBar$1;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/ActionableToastBar;->show(Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/ActionableToastBar;

.field final synthetic val$listener:Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/ActionableToastBar;Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/deskclock/widget/ActionableToastBar$1;->this$0:Lcom/android/deskclock/widget/ActionableToastBar;

    iput-object p2, p0, Lcom/android/deskclock/widget/ActionableToastBar$1;->val$listener:Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar$1;->val$listener:Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar$1;->val$listener:Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;

    invoke-interface {v0}, Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;->onActionClicked()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar$1;->this$0:Lcom/android/deskclock/widget/ActionableToastBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/ActionableToastBar;->hide(Z)V

    .line 121
    return-void
.end method
