.class Lcom/android/deskclock/timer/TimerFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;

.field final synthetic val$t:Lcom/android/deskclock/timer/TimerObj;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$7;->val$t:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    .line 695
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$7;->val$t:Lcom/android/deskclock/timer/TimerObj;

    iget-object v1, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const-string v2, "animatedHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment$7;->val$t:Lcom/android/deskclock/timer/TimerObj;

    iget-object v4, v4, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 697
    .local v0, b:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 699
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$7$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$7$1;-><init>(Lcom/android/deskclock/timer/TimerFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 717
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 718
    return-void
.end method
