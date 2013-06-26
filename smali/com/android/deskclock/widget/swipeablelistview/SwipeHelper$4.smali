.class Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    iput-object p2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 371
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    #getter for: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F
    invoke-static {v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$300(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 367
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    #getter for: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$100(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    #getter for: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$000(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 374
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 363
    return-void
.end method
