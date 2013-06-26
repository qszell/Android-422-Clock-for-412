.class public Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreensaverMoveSaverRunnable"
.end annotation


# static fields
.field private static mSlowStartWithBrakes:Landroid/animation/TimeInterpolator;


# instance fields
.field private mContentView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mSaverView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable$1;-><init>(Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;)V

    sput-object v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSlowStartWithBrakes:Landroid/animation/TimeInterpolator;

    .line 227
    return-void
.end method


# virtual methods
.method public registerViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "contentView"
    .parameter "saverView"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mContentView:Landroid/view/View;

    .line 231
    iput-object p2, p0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    .line 232
    return-void
.end method

.method public run()V
    .locals 31

    .prologue
    .line 236
    const-wide/32 v7, 0xea60

    .line 237
    .local v7, delay:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :goto_0
    return-void

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v21, v0

    .line 244
    .local v21, xrange:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    .line 245
    .local v25, yrange:F
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xrange: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " yrange: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 247
    const/16 v26, 0x0

    cmpl-float v26, v21, v26

    if-nez v26, :cond_2

    const/16 v26, 0x0

    cmpl-float v26, v25, v26

    if-nez v26, :cond_2

    .line 248
    const-wide/16 v7, 0x1f4

    .line 312
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 250
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v26

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v12, v0

    .line 251
    .local v12, nextx:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v13, v0

    .line 253
    .local v13, nexty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getAlpha()F

    move-result v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    int-to-float v0, v12

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setX(F)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    int-to-float v0, v13

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setY(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ObjectAnimator;->start()V

    .line 304
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 305
    .local v14, now:J
    const-wide/32 v26, 0xea60

    rem-long v4, v14, v26

    .line 306
    .local v4, adjust:J
    const-wide/32 v26, 0xea60

    sub-long v26, v26, v4

    add-long v26, v26, v7

    const-wide/16 v28, 0xbb8

    sub-long v7, v26, v28

    goto/16 :goto_1

    .line 261
    .end local v4           #adjust:J
    .end local v14           #now:J
    :cond_3
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 262
    .local v16, s:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "x"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getX()F

    move-result v30

    aput v30, v28, v29

    const/16 v29, 0x1

    int-to-float v0, v12

    move/from16 v30, v0

    aput v30, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 264
    .local v19, xMove:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "y"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getY()F

    move-result v30

    aput v30, v28, v29

    const/16 v29, 0x1

    int-to-float v0, v13

    move/from16 v30, v0

    aput v30, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 267
    .local v23, yMove:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "scaleX"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_1

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 268
    .local v20, xShrink:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "scaleX"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_2

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 270
    .local v18, xGrow:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "scaleY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_3

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 271
    .local v24, yShrink:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "scaleY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_4

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 272
    .local v22, yGrow:Landroid/animation/Animator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .local v17, shrink:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 273
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .local v11, grow:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_5

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 276
    .local v10, fadeout:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->mSaverView:Landroid/view/View;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_6

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 287
    .local v9, fadein:Landroid/animation/Animator;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 288
    .local v3, accel:Landroid/view/animation/AccelerateInterpolator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 290
    .local v6, decel:Landroid/view/animation/DecelerateInterpolator;
    const-wide/16 v26, 0xbb8

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    const-wide/16 v26, 0xbb8

    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    const-wide/16 v26, 0xbb8

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    const-wide/16 v26, 0xbb8

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 295
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 296
    const-wide/16 v26, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v26 .. v28}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 297
    const-wide/16 v26, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v26 .. v28}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 298
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v26 .. v28}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v26

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v26 .. v28}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 301
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 257
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 267
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 268
    :array_2
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 270
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 271
    :array_4
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 275
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 276
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
