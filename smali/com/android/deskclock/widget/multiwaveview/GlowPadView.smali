.class public Lcom/android/deskclock/widget/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/deskclock/widget/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 100
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 101
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 102
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 110
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 111
    iput v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 113
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 120
    iput v11, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 121
    iput v11, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 161
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 168
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$2;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$3;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 183
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$4;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 199
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 200
    iput-boolean v9, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 214
    .local v5, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/deskclock/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    iget v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 216
    const/16 v7, 0x8

    iget v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 217
    const/16 v7, 0xb

    iget v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 218
    const/16 v7, 0xa

    iget v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 220
    const/16 v7, 0xc

    iget v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 222
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 223
    .local v1, handle:Landroid/util/TypedValue;
    new-instance v10, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_3

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v10, v5, v7, v12}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 224
    iget-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    sget-object v10, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v10}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 225
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    invoke-direct {v7, v5, v10, v9}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 228
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 230
    const/4 v7, 0x6

    invoke-direct {p0, v0, v7}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 231
    .local v4, pointId:I
    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 232
    .local v3, pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 234
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 237
    .local v2, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 240
    :cond_1
    iget-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 241
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2           #outValue:Landroid/util/TypedValue;
    .end local v3           #pointDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #pointId:I
    :cond_3
    move v7, v8

    .line 223
    goto :goto_0

    .line 245
    .restart local v2       #outValue:Landroid/util/TypedValue;
    .restart local v3       #pointDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #pointId:I
    :cond_4
    invoke-virtual {v0, v12, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 246
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 247
    .local v6, resourceId:I
    if-nez v6, :cond_5

    .line 248
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 250
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 254
    .end local v6           #resourceId:I
    :cond_6
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 255
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 256
    .restart local v6       #resourceId:I
    if-nez v6, :cond_7

    .line 257
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 262
    .end local v6           #resourceId:I
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    const/16 v7, 0x30

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 267
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    iget v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 272
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 274
    new-instance v7, Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    invoke-direct {v7, v3}, Lcom/android/deskclock/widget/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    .line 275
    iget-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 276
    iget-object v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v7, v7, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 277
    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)Lcom/android/deskclock/widget/multiwaveview/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1117
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1118
    invoke-direct {p0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1122
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1129
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 980
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 981
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 984
    :cond_1
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 987
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 990
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getLayoutDirection()I

    move-result v1

    .line 991
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 993
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1002
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1005
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1014
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1017
    :goto_1
    return-void

    .line 995
    :pswitch_1
    iput v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 998
    :pswitch_2
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1007
    :sswitch_0
    iput v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1010
    :sswitch_1
    iput p2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 993
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1005
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 424
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 425
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 427
    .local v2, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v2           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 430
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 447
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 438
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 441
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1098
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 450
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 451
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 453
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 456
    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 459
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v5, v4}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 461
    iget-boolean v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 471
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 472
    return-void

    .end local v1           #targetHit:Z
    :cond_1
    move v1, v3

    .line 451
    goto :goto_0

    .line 467
    .restart local v1       #targetHit:Z
    :cond_2
    iget-object v4, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v3, v5, v4}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 468
    invoke-direct {p0, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 285
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1146
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1147
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v0, 0x0

    .line 1152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 280
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 281
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 2

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1106
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    const v0, 0x3fa66666

    iget v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float/2addr v0, v1

    .line 1111
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->square(F)F

    move-result v0

    return v0

    .line 1109
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1134
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1135
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    .line 1140
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 822
    iget v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 823
    .local v0, actionIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 824
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 825
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 793
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 794
    .local v1, eventX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 795
    .local v2, eventY:F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 796
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 802
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointerId:I

    .line 800
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 37
    .parameter "event"

    .prologue
    .line 828
    const/4 v6, -0x1

    .line 829
    .local v6, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 830
    .local v12, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 831
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 832
    .local v17, ntargets:I
    const/16 v31, 0x0

    .line 833
    .local v31, x:F
    const/16 v32, 0x0

    .line 834
    .local v32, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 836
    .local v5, actionIndex:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v5, v0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    const/4 v14, 0x0

    .local v14, k:I
    :goto_1
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_b

    .line 841
    if-ge v14, v12, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 843
    .local v10, eventX:F
    :goto_2
    if-ge v14, v12, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 846
    .local v11, eventY:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 847
    .local v29, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 848
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 849
    .local v28, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 850
    .local v18, scale:F
    :goto_4
    mul-float v15, v29, v18

    .line 851
    .local v15, limitX:F
    mul-float v16, v30, v18

    .line 852
    .local v16, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 854
    .local v8, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 855
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 858
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 860
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 861
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 863
    .local v19, snapDistance2:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_a

    .line 864
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 866
    .local v21, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    int-to-double v0, v13

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    sub-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v25, v33, v35

    .line 867
    .local v25, targetMinRad:D
    int-to-double v0, v13

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    add-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v23, v33, v35

    .line 868
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 869
    cmpl-double v33, v8, v25

    if-lez v33, :cond_3

    cmpg-double v33, v8, v23

    if-lez v33, :cond_4

    :cond_3
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpl-double v33, v33, v25

    if-lez v33, :cond_9

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_9

    :cond_4
    const/4 v7, 0x1

    .line 873
    .local v7, angleMatches:Z
    :goto_6
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_5

    .line 874
    move v6, v13

    .line 863
    .end local v7           #angleMatches:Z
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 841
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v13           #i:I
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_2

    .line 843
    .restart local v10       #eventX:F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_3

    .line 849
    .restart local v11       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_8
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 869
    .restart local v8       #angleRad:D
    .restart local v13       #i:I
    .restart local v15       #limitX:F
    .restart local v16       #limitY:F
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    .restart local v23       #targetMaxRad:D
    .restart local v25       #targetMinRad:D
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 879
    .end local v13           #i:I
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_a
    move/from16 v31, v15

    .line 880
    move/from16 v32, v16

    .line 840
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 883
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 887
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_e

    .line 888
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 889
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 895
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_d

    .line 897
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 899
    .restart local v21       #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 902
    .end local v21           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_c
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_d

    .line 903
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 904
    .restart local v21       #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v33

    const-string v34, "accessibility"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 908
    .local v4, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 909
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 910
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 914
    .end local v4           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .end local v21           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 891
    :cond_e
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 892
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_7
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 807
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 808
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 810
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 412
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/deskclock/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 421
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 492
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 493
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 494
    .local v3, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 496
    .local v2, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f80

    .line 498
    .local v9, targetScale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 499
    .local v6, length:I
    sget-object v5, Lcom/android/deskclock/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 500
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 501
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 502
    .local v8, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 493
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 494
    .restart local v3       #duration:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 496
    .restart local v2       #delay:I
    :cond_2
    const v9, 0x3f4ccccd

    goto :goto_2

    .line 512
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f80

    .line 514
    .local v7, ringScaleTarget:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 523
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 524
    return-void

    .line 512
    .end local v7           #ringScaleTarget:F
    :cond_4
    const/high16 v7, 0x3f00

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 482
    if-eq v0, p1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 477
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 478
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 577
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 578
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 580
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 581
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 582
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 585
    .local v4, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 586
    invoke-virtual {v4}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v4           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 589
    :cond_1
    iput v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 590
    iput v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 591
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->requestLayout()V

    .line 596
    :goto_1
    return-void

    .line 593
    :cond_2
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 594
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1157
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1158
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1159
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1160
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1163
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1164
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 563
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 564
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 565
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 567
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 568
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const/4 v8, 0x3

    invoke-direct {v5, v4, v7, v8}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 569
    .local v5, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    .end local v5           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 571
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 572
    return-object v2
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1199
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1200
    :cond_0
    const/4 v2, 0x0

    .line 1218
    :cond_1
    :goto_0
    return v2

    .line 1203
    :cond_2
    const/4 v2, 0x0

    .line 1204
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1205
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1206
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1208
    .local v4, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1209
    invoke-virtual {v4, p1, p3}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1210
    const/4 v2, 0x1

    .line 1206
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1214
    .end local v4           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1215
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 327
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 336
    move v0, v1

    .line 338
    :goto_0
    return v0

    .line 329
    :sswitch_0
    move v0, p2

    .line 330
    goto :goto_0

    .line 332
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    goto :goto_0

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 947
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 948
    if-eqz p1, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 951
    :cond_0
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 952
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 953
    if-nez p1, :cond_2

    .line 954
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 958
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 961
    :cond_1
    return-void

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 400
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/deskclock/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 407
    return-void
.end method

.method private showTargets(Z)V
    .locals 12
    .parameter "animate"

    .prologue
    .line 527
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 528
    iput-boolean p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 529
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 530
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 531
    .local v1, duration:I
    :goto_1
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 532
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 533
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 534
    .local v4, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    sget-object v5, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 535
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/deskclock/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 529
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 543
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    int-to-long v7, v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/deskclock/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 553
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1094
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 736
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/deskclock/widget/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/deskclock/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 740
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/deskclock/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/deskclock/widget/multiwaveview/Tweener;

    .line 744
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/deskclock/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 746
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 700
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 701
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 702
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 703
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/deskclock/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$5;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/deskclock/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 716
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 696
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 697
    return-void
.end method

.method private switchToState(IFF)V
    .locals 7
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 352
    packed-switch p1, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 355
    invoke-direct {p0, v2, v2, v3, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 356
    invoke-direct {p0, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 357
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 358
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 367
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 368
    invoke-direct {p0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 369
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 370
    invoke-direct {p0, v6}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 372
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 375
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 381
    .end local v0           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    :pswitch_3
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 382
    invoke-direct {p0, v2, v2, v4, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 387
    :pswitch_4
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 388
    invoke-direct {p0, v2, v2, v3, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 392
    :pswitch_5
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 964
    iget v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 965
    .local v0, tx:F
    iget v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 966
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 968
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 969
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 970
    iput-boolean v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 973
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 788
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p2}, Lcom/android/deskclock/widget/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 789
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1073
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1058
    iget-object v5, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1059
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1060
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1061
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1062
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1063
    .local v4, targetIcon:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1064
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1065
    invoke-virtual {v4, p2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1066
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1067
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1169
    .local v0, drawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1189
    iget-object v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1190
    .local v1, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1194
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :goto_1
    return v0

    .line 1188
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1194
    .end local v1           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1077
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/deskclock/widget/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/deskclock/widget/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1078
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1079
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1080
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1081
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1082
    .local v2, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1083
    invoke-virtual {v2, p1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1080
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    .end local v2           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1087
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 919
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 922
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 924
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 935
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 936
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 938
    .end local v1           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 939
    return v4

    .line 926
    .restart local v1       #action:I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 929
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 932
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1021
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1022
    sub-int v5, p4, p2

    .line 1023
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1027
    .local v0, height:I
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1028
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1029
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1031
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1034
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1035
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1036
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1037
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1040
    :cond_0
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1041
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1043
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1044
    iget-object v6, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1046
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1047
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1048
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1050
    iput v1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1051
    iput v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1054
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 344
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 345
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 346
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 347
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 348
    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 349
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    .local v0, action:I
    const/4 v1, 0x0

    .line 752
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 782
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->invalidate()V

    .line 783
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 756
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 757
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 758
    const/4 v1, 0x1

    .line 759
    goto :goto_0

    .line 763
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 764
    const/4 v1, 0x1

    .line 765
    goto :goto_0

    .line 770
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 771
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 772
    const/4 v1, 0x1

    .line 773
    goto :goto_0

    .line 777
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 778
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 779
    const/4 v1, 0x1

    goto :goto_0

    .line 783
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 676
    iget v4, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 677
    const/4 v0, 0x1

    .line 678
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 681
    .local v3, waveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    invoke-virtual {v3, v5}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 683
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 688
    .end local v1           #t:J
    :cond_0
    if-eqz v0, :cond_1

    .line 689
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 692
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1231
    if-nez p3, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v0

    .line 1234
    :cond_1
    if-eqz p1, :cond_2

    .line 1236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1238
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1240
    if-eqz v2, :cond_2

    .line 1241
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1242
    if-eqz v2, :cond_2

    .line 1243
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1244
    invoke-direct {p0, v1, p3, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1255
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p3, p3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v1

    .line 1248
    const-string v2, "GlowPadView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to swap drawable; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1250
    :catch_1
    move-exception v1

    .line 1251
    const-string v2, "GlowPadView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to swap drawable from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 726
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 727
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 728
    invoke-direct {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 729
    invoke-direct {p0, p1, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 731
    invoke-static {}, Lcom/android/deskclock/widget/multiwaveview/Tweener;->reset()V

    .line 732
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 305
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 306
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 307
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 643
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 644
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;

    .line 1175
    .local v1, target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1176
    invoke-virtual {v1, p2}, Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1180
    .end local v1           #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void

    .line 1173
    .restart local v1       #target:Lcom/android/deskclock/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1091
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 622
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 623
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 626
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 606
    iput p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 664
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 298
    return-void
.end method
