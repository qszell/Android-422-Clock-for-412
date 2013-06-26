.class Lcom/android/deskclock/widget/ActionableToastBar$2;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/ActionableToastBar;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/ActionableToastBar;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/deskclock/widget/ActionableToastBar$2;->this$0:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar$2;->this$0:Lcom/android/deskclock/widget/ActionableToastBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/ActionableToastBar;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar$2;->this$0:Lcom/android/deskclock/widget/ActionableToastBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/ActionableToastBar;->setVisibility(I)V

    .line 170
    return-void
.end method
