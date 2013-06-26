.class public Lcom/android/deskclock/CircleTimerView;
.super Landroid/view/View;
.source "CircleTimerView.java"


# static fields
.field private static mCircleXCenterLeftPadding:F

.field private static mDiamondStrokeSize:F

.field private static mMarkerStrokeSize:F

.field private static mStrokeSize:F


# instance fields
.field private mAccumulatedTime:J

.field private mAnimate:Z

.field private final mArcRect:Landroid/graphics/RectF;

.field private mCurrentIntervalTime:J

.field private final mFill:Landroid/graphics/Paint;

.field private mIntervalStartTime:J

.field private mIntervalTime:J

.field private mMarkerTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mPaused:Z

.field private mRadiusOffset:F

.field private mRectHalfWidth:F

.field private mRedColor:I

.field private mResources:Landroid/content/res/Resources;

.field private mScreenDensity:F

.field private mTimerMode:Z

.field private mWhiteColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/deskclock/CircleTimerView;->mCircleXCenterLeftPadding:F

    .line 31
    const/high16 v0, 0x4080

    sput v0, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    .line 32
    const/high16 v0, 0x4140

    sput v0, Lcom/android/deskclock/CircleTimerView;->mDiamondStrokeSize:F

    .line 33
    const/high16 v0, 0x4000

    sput v0, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/CircleTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 24
    iput-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 25
    iput-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 26
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 27
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 28
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    .line 37
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    .line 46
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/deskclock/CircleTimerView;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4000

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/android/deskclock/CircleTimerView;->mCircleXCenterLeftPadding:F

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/deskclock/CircleTimerView;->mDiamondStrokeSize:F

    .line 123
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    .line 124
    sget v0, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    sget v1, Lcom/android/deskclock/CircleTimerView;->mDiamondStrokeSize:F

    sget v2, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mRadiusOffset:F

    .line 126
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mScreenDensity:F

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    sget v0, Lcom/android/deskclock/CircleTimerView;->mDiamondStrokeSize:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    .line 135
    return-void
.end method


# virtual methods
.method public abortIntervalAnimation()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 96
    return-void
.end method

.method public clearSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sw_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v1, "sw_accum_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v1, "sw_state"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    return-void
.end method

.method protected drawRedDiamond(Landroid/graphics/Canvas;FIIF)V
    .locals 9
    .parameter "canvas"
    .parameter "degrees"
    .parameter "xCenter"
    .parameter "yCenter"
    .parameter "radius"

    .prologue
    const/high16 v3, 0x43b4

    const/high16 v2, 0x4387

    .line 214
    iget-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v0, :cond_0

    .line 217
    mul-float v0, p2, v3

    sub-float v6, v2, v0

    .line 222
    .local v6, diamondPercent:F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 224
    .local v7, diamondRadians:D
    int-to-float v0, p3

    float-to-double v1, p5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, p4

    float-to-double v2, p5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    const/high16 v0, 0x4234

    add-float/2addr v0, v6

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 227
    iget v0, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    neg-float v1, v0

    iget v0, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    neg-float v2, v0

    iget v3, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    iget v4, p0, Lcom/android/deskclock/CircleTimerView;->mRectHalfWidth:F

    iget-object v5, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    return-void

    .line 219
    .end local v6           #diamondPercent:F
    .end local v7           #diamondRadians:D
    :cond_0
    mul-float v0, p2, v3

    add-float v6, v2, v0

    .restart local v6       #diamondPercent:F
    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/CircleTimerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 144
    .local v4, xCenter:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/CircleTimerView;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    .line 146
    .local v5, yCenter:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mRadiusOffset:F

    sub-float v6, v1, v2

    .line 149
    .local v6, radius:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/CircleTimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/CircleTimerView;->mRadiusOffset:F

    add-float/2addr v1, v6

    float-to-int v4, v1

    .line 151
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_0

    .line 152
    int-to-float v1, v4

    sget v2, Lcom/android/deskclock/CircleTimerView;->mCircleXCenterLeftPadding:F

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_3

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    int-to-float v1, v4

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_1

    .line 161
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/CircleTimerView;->drawRedDiamond(Landroid/graphics/Canvas;FIIF)V

    .line 207
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/CircleTimerView;->invalidate()V

    .line 210
    :cond_2
    return-void

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    if-eqz v1, :cond_4

    .line 165
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    sub-long/2addr v1, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    add-long/2addr v1, v7

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v5

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v5

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v4

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v4

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 172
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    long-to-float v1, v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    long-to-float v2, v7

    div-float v3, v1, v2

    .line 174
    .local v3, redPercent:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v3, v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_5

    const/high16 v3, 0x3f80

    .line 176
    :cond_5
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f80

    cmpl-float v1, v3, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x3f80

    :goto_1
    sub-float v14, v2, v1

    .line 178
    .local v14, whitePercent:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_8

    .line 180
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x4387

    neg-float v1, v3

    const/high16 v2, 0x43b4

    mul-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 186
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x4387

    const/high16 v1, 0x43b4

    mul-float v10, v14, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 195
    :goto_3
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    rem-long/2addr v1, v7

    long-to-float v1, v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    long-to-float v2, v7

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float v13, v1, v2

    .line 202
    .local v13, angle:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x4387

    add-float v9, v1, v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/CircleTimerView;->mScreenDensity:F

    const-wide v10, 0x4076800000000000L

    float-to-double v15, v6

    const-wide v17, 0x400921fb54442d18L

    mul-double v15, v15, v17

    div-double/2addr v10, v15

    double-to-float v2, v10

    mul-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .end local v13           #angle:F
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/CircleTimerView;->drawRedDiamond(Landroid/graphics/Canvas;FIIF)V

    goto/16 :goto_0

    .end local v14           #whitePercent:F
    :cond_7
    move v1, v3

    .line 176
    goto/16 :goto_1

    .line 182
    .restart local v14       #whitePercent:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x4387

    const/high16 v1, 0x43b4

    mul-float v10, v3, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 191
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x4387

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v7, 0x43b4

    mul-float/2addr v2, v7

    add-float v9, v1, v2

    const/high16 v1, 0x43b4

    mul-float v10, v14, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public pauseIntervalAnimation()V
    .locals 6

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 90
    iget-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 92
    return-void
.end method

.method public readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "prefs"
    .parameter "key"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 260
    iget-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 261
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 69
    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 70
    invoke-virtual {p0}, Lcom/android/deskclock/CircleTimerView;->postInvalidate()V

    .line 71
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 59
    invoke-virtual {p0}, Lcom/android/deskclock/CircleTimerView;->postInvalidate()V

    .line 60
    return-void
.end method

.method public setMarkerTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 64
    invoke-virtual {p0}, Lcom/android/deskclock/CircleTimerView;->postInvalidate()V

    .line 65
    return-void
.end method

.method public setPassedTime(JZ)V
    .locals 2
    .parameter "time"
    .parameter "drawRed"

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 108
    if-eqz p3, :cond_0

    .line 109
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/CircleTimerView;->postInvalidate()V

    .line 112
    return-void
.end method

.method public setTimerMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 139
    return-void
.end method

.method public startIntervalAnimation()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/deskclock/CircleTimerView;->invalidate()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 77
    return-void
.end method

.method public stopIntervalAnimation()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 82
    return-void
.end method

.method public writeToSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    return-void
.end method
