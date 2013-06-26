.class Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->dismissChild(Landroid/view/View;F)V
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
    .line 301
    iput-object p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    iput-object p2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    #getter for: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$100(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;->this$0:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    #getter for: Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->access$000(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 306
    return-void
.end method
