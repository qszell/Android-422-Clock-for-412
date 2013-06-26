.class Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    iget-object v2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$animView:Landroid/view/View;

    #calls: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F
    invoke-static {v1, v2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$200(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 358
    return-void
.end method
