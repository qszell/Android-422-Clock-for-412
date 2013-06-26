.class public Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private static DISMISS_ANIMATION_DURATION:I

.field private static MAX_DISMISS_VELOCITY:I

.field private static MAX_ESCAPE_ANIMATION_DURATION:I

.field private static MIN_LOCK:F

.field private static MIN_SWIPE:F

.field private static MIN_VERT:F

.field private static SNAP_ANIM_LEN:I

.field private static SWIPE_ESCAPE_VELOCITY:I

.field private static SWIPE_SCROLL_SLOP:I

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mLastY:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mProtected:Z

.field private mStartAlpha:F

.field private final mSwipeDirection:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;FF)V
    .locals 3
    .parameter "context"
    .parameter "swipeDirection"
    .parameter "callback"
    .parameter "densityScale"
    .parameter "pagingTouchSlop"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const v1, 0x3e99999a

    iput v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mMinAlpha:F

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mProtected:Z

    .line 92
    iput-object p3, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    .line 93
    iput p2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    .line 94
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 95
    iput p4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDensityScale:F

    .line 96
    iput p5, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mPagingTouchSlop:F

    .line 97
    sget v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 100
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 101
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 102
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 103
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 104
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->DISMISS_ANIMATION_DURATION:I

    .line 105
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    .line 106
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_SWIPE:F

    .line 107
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_VERT:F

    .line 108
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_LOCK:F

    .line 110
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    return v0
.end method

.method private createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 3
    .parameter "v"
    .parameter "newPos"
    .parameter "duration"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    .local v0, anim:Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .parameter "v"
    .parameter "newPos"

    .prologue
    .line 126
    iget v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    .local v0, anim:Landroid/animation/ObjectAnimator;
    return-object v0

    .line 126
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private determineDuration(Landroid/view/View;FF)I
    .locals 3
    .parameter "animView"
    .parameter "newPos"
    .parameter "velocity"

    .prologue
    .line 321
    sget v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 322
    .local v0, duration:I
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 328
    :cond_0
    sget v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method

.method private determinePos(Landroid/view/View;F)F
    .locals 3
    .parameter "animView"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, newPos:F
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 338
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    neg-float v0, v1

    .line 342
    :goto_0
    return v0

    .line 340
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .parameter "view"
    .parameter "velocity"

    .prologue
    .line 294
    iget-object v5, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, animView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 296
    .local v2, canAnimViewBeDismissed:Z
    invoke-direct {p0, v1, p2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->determinePos(Landroid/view/View;F)F

    move-result v4

    .line 297
    .local v4, newPos:F
    invoke-direct {p0, v1, v4, p2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->determineDuration(Landroid/view/View;FF)I

    move-result v3

    .line 299
    .local v3, duration:I
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 300
    invoke-direct {p0, v1, v4, v3}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 301
    .local v0, anim:Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;

    invoke-direct {v5, p0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$1;-><init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    new-instance v5, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$2;-><init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 318
    return-void
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .parameter "view"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 162
    .local v3, viewSize:F
    const v4, 0x3f333333

    mul-float v0, v4, v3

    .line 163
    .local v0, fadeSize:F
    iget v2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    .line 164
    .local v2, result:F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 165
    .local v1, pos:F
    sget v4, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 166
    iget v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    sub-float v5, v1, v5

    div-float/2addr v5, v0

    sub-float v2, v4, v5

    .line 170
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 167
    :cond_1
    iget v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->ALPHA_FADE_START:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 168
    iget v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    div-float/2addr v5, v0

    add-float v2, v4, v5

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .parameter "vt"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .parameter "vt"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 178
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .parameter "view"
    .parameter "childBounds"

    .prologue
    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    .line 188
    .restart local p0
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "translate"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 204
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    :goto_1
    return v15

    .line 206
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mLastY:F

    .line 207
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    .line 208
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    const v16, 0x7f0e0014

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, button:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 216
    .local v9, left:I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    .line 217
    .local v14, top:I
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 218
    .local v10, parent:Landroid/view/View;
    :goto_2
    if-eqz v10, :cond_2

    .line 219
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v15

    add-int/2addr v9, v15

    .line 220
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    add-int/2addr v14, v15

    .line 221
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 222
    const/4 v10, 0x0

    goto :goto_2

    .line 224
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .end local v10           #parent:Landroid/view/View;
    check-cast v10, Landroid/view/View;

    .restart local v10       #parent:Landroid/view/View;
    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v14

    add-int/lit8 v2, v15, 0x32

    .line 230
    .local v2, bottom:I
    add-int/lit8 v14, v14, -0x32

    .line 231
    add-int/lit8 v9, v9, -0x32

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    .line 234
    .local v12, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    .line 237
    .local v13, rawY:F
    int-to-float v15, v9

    cmpl-float v15, v12, v15

    if-lez v15, :cond_3

    int-to-float v15, v14

    cmpl-float v15, v13, v15

    if-lez v15, :cond_3

    int-to-float v15, v2

    cmpg-float v15, v13, v15

    if-gez v15, :cond_3

    .line 238
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mProtected:Z

    .line 243
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mStartAlpha:F

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosX:F

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosY:F

    goto/16 :goto_0

    .line 240
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mProtected:Z

    goto :goto_3

    .line 252
    .end local v2           #bottom:I
    .end local v3           #button:Landroid/view/View;
    .end local v9           #left:I
    .end local v10           #parent:Landroid/view/View;
    .end local v12           #rawX:F
    .end local v13           #rawY:F
    .end local v14           #top:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mLastY:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    if-nez v15, :cond_4

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 256
    .local v5, currY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 257
    .local v4, currX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosY:F

    sub-float v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 258
    .local v8, deltaY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosX:F

    sub-float v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 259
    .local v7, deltaX:F
    sget v15, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    int-to-float v15, v15

    cmpl-float v15, v8, v15

    if-lez v15, :cond_4

    const v15, 0x3f99999a

    mul-float/2addr v15, v7

    cmpl-float v15, v8, v15

    if-lez v15, :cond_4

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mLastY:F

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    invoke-interface {v15}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->onScroll()V

    .line 262
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 265
    .end local v4           #currX:F
    .end local v5           #currY:F
    .end local v7           #deltaX:F
    .end local v8           #deltaY:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 267
    .local v11, pos:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosX:F

    sub-float v6, v11, v15

    .line 268
    .local v6, delta:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mPagingTouchSlop:F

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 270
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTranslationX()F

    move-result v16

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosX:F

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosY:F

    .line 275
    .end local v6           #delta:F
    .end local v11           #pos:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 279
    :pswitch_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    .line 280
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 281
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 282
    const/high16 v15, -0x4080

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mProtected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 381
    :cond_0
    const/16 v18, 0x0

    .line 464
    :goto_0
    return v18

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 385
    .local v3, action:I
    packed-switch v3, :pswitch_data_0

    .line 464
    :cond_2
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 388
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosX:F

    move/from16 v19, v0

    sub-float v7, v18, v19

    .line 390
    .local v7, deltaX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mInitialTouchPosY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 394
    .local v8, deltaY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    sget v18, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_VERT:F

    cmpl-float v18, v8, v18

    if-lez v18, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_LOCK:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    const v18, 0x3f99999a

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    cmpl-float v18, v8, v18

    if-lez v18, :cond_3

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->onScroll()V

    .line 397
    const/16 v18, 0x0

    goto :goto_0

    .line 399
    :cond_3
    sget v13, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MIN_SWIPE:F

    .line 400
    .local v13, minDistance:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v13

    if-gez v18, :cond_4

    .line 403
    const/16 v18, 0x1

    goto :goto_0

    .line 407
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v15

    .line 409
    .local v15, size:F
    const v18, 0x3e19999a

    mul-float v11, v18, v15

    .line 410
    .local v11, maxScrollDistance:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v15

    if-ltz v18, :cond_8

    .line 411
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-lez v18, :cond_7

    move v7, v11

    .line 417
    .end local v11           #maxScrollDistance:F
    .end local v15           #size:F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 421
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto/16 :goto_1

    .line 411
    .restart local v11       #maxScrollDistance:F
    .restart local v15       #size:F
    :cond_7
    neg-float v7, v11

    goto :goto_2

    .line 413
    :cond_8
    div-float v18, v7, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff921fb54442d18L

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v7, v11, v18

    goto :goto_2

    .line 426
    .end local v7           #deltaX:F
    .end local v8           #deltaY:F
    .end local v11           #maxScrollDistance:F
    .end local v13           #minDistance:F
    .end local v15           #size:F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 427
    sget v18, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v12, v18, v19

    .line 428
    .local v12, maxVelocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 429
    sget v18, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v10, v18, v19

    .line 430
    .local v10, escapeVelocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v17

    .line 431
    .local v17, velocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    .line 436
    .local v14, perpendicularVelocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 437
    .local v16, translation:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    .line 439
    .local v6, currAnimViewSize:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL

    float-to-double v0, v6

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_a

    const/4 v4, 0x1

    .line 443
    .local v4, childSwipedFarEnough:Z
    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v10

    if-lez v18, :cond_d

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_b

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_c

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa999999999999aL

    float-to-double v0, v6

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_d

    const/4 v5, 0x1

    .line 453
    .local v5, childSwipedFastEnough:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v5, :cond_9

    if-eqz v4, :cond_e

    :cond_9
    const/4 v9, 0x1

    .line 456
    .local v9, dismissChild:Z
    :goto_7
    if-eqz v9, :cond_10

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v5, :cond_f

    .end local v17           #velocity:F
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 439
    .end local v4           #childSwipedFarEnough:Z
    .end local v5           #childSwipedFastEnough:Z
    .end local v9           #dismissChild:Z
    .restart local v17       #velocity:F
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 443
    .restart local v4       #childSwipedFarEnough:Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_4

    :cond_c
    const/16 v19, 0x0

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 453
    .restart local v5       #childSwipedFastEnough:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 457
    .restart local v9       #dismissChild:Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_8

    .line 459
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .locals 0
    .parameter "densityScale"

    .prologue
    .line 113
    iput p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mDensityScale:F

    .line 114
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .parameter "pagingTouchSlop"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mPagingTouchSlop:F

    .line 118
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .parameter "view"
    .parameter "velocity"

    .prologue
    .line 346
    iget-object v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, animView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->mCallback:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 348
    .local v2, canAnimViewBeDismissed:Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 349
    .local v0, anim:Landroid/animation/ObjectAnimator;
    sget v3, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 350
    .local v3, duration:I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    new-instance v4, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$3;-><init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    new-instance v4, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;

    invoke-direct {v4, p0, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$4;-><init>(Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    return-void
.end method
