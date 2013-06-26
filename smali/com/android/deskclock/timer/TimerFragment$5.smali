.class Lcom/android/deskclock/timer/TimerFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$5;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$5;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1100(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$5;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 624
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$5;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$5;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 626
    .local v0, b:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 627
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 629
    return-void

    .line 625
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
