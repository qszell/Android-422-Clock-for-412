.class public Lcom/android/deskclock/timer/CountingTimerView;
.super Landroid/view/View;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/CountingTimerView$SignedTime;,
        Lcom/android/deskclock/timer/CountingTimerView$Hundredths;,
        Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAndroidClockMonoBold:Landroid/graphics/Typeface;

.field private final mAndroidClockMonoLight:Landroid/graphics/Typeface;

.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private final mBigFontSize:F

.field private mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

.field mBlinkThread:Ljava/lang/Runnable;

.field private mDefaultColor:I

.field private mHours:Ljava/lang/String;

.field private mHundredths:Ljava/lang/String;

.field private mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

.field private mMinutes:Ljava/lang/String;

.field private final mPaintBig:Landroid/graphics/Paint;

.field private final mPaintBigThin:Landroid/graphics/Paint;

.field private final mPaintLabel:Landroid/graphics/Paint;

.field private final mPaintMed:Landroid/graphics/Paint;

.field private final mPressedColor:I

.field private final mRedColor:I

.field private mRemeasureText:Z

.field private final mRobotoLabel:Landroid/graphics/Typeface;

.field private mSeconds:Ljava/lang/String;

.field private mShowTimeStr:Z

.field private final mSmallFontSize:F

.field private mStopStartTextView:Landroid/widget/TextView;

.field private mTextHeight:F

.field private mTotalTextWidth:F

.field private mVirtualButtonEnabled:Z

.field private mVirtualButtonPressedOn:Z

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/CountingTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 51
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 62
    iput-boolean v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 75
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/timer/CountingTimerView$1;-><init>(Lcom/android/deskclock/timer/CountingTimerView;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoBold:Landroid/graphics/Typeface;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Light.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoLight:Landroid/graphics/Typeface;

    .line 244
    const-string v2, "accessibility"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 246
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRobotoLabel:Landroid/graphics/Typeface;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    .line 249
    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 250
    invoke-static {}, Lcom/android/deskclock/Utils;->getPressedColorId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 251
    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    .line 253
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 256
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 257
    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    .line 258
    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    .line 260
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 263
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 265
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 268
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAndroidClockMonoLight:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 270
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRobotoLabel:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 276
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 277
    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-virtual {p0, v2}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 280
    const-string v2, "%010d"

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x75bcd15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, allDigits:Ljava/lang/String;
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    const v4, 0x7f0d0055

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 283
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    const v4, 0x7f0d0056

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Lcom/android/deskclock/timer/CountingTimerView$SignedTime;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 285
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    const v4, 0x7f0d0057

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    .line 287
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    const-string v4, "."

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/CountingTimerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/CountingTimerView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/CountingTimerView;->withinVirtualButtonBounds(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V

    return-void
.end method

.method private calcTotalTextWidth()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    .line 397
    return-void
.end method

.method private getDigitsLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_3
.end method

.method private static getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .parameter "showNeg"
    .parameter "r"

    .prologue
    const v7, 0x7f0f0003

    const v6, 0x7f0f0004

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, s:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 473
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_0
    if-eqz p3, :cond_1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 478
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 481
    :cond_1
    if-nez p0, :cond_2

    .line 482
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 490
    :cond_2
    const v1, 0x7f0f0002

    invoke-virtual {p4, v1, p0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private setTotalTextWidth()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 400
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    .line 404
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 405
    .local v4, width:I
    if-eqz v4, :cond_0

    .line 406
    const/high16 v5, 0x3f40

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v3, v5

    .line 408
    .local v3, wantWidth:F
    :goto_0
    iget v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 410
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->getLabelWidth()F

    move-result v5

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->getLabelWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->getLabelWidth()F

    move-result v6

    add-float v0, v5, v6

    .line 412
    .local v0, fixedWidths:F
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->getWidth()F

    move-result v6

    add-float v2, v5, v6

    .line 415
    .local v2, varWidths:F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_0

    cmpl-float v5, v0, v7

    if-eqz v5, :cond_0

    cmpl-float v5, v0, v3

    if-ltz v5, :cond_1

    .line 428
    .end local v0           #fixedWidths:F
    .end local v2           #varWidths:F
    .end local v3           #wantWidth:F
    :cond_0
    return-void

    .line 419
    .restart local v0       #fixedWidths:F
    .restart local v2       #varWidths:F
    .restart local v3       #wantWidth:F
    :cond_1
    sub-float v5, v3, v0

    div-float v1, v5, v2

    .line 420
    .local v1, sizeRatio:F
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 425
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    goto :goto_0
.end method

.method private virtualButtonPressed(Z)V
    .locals 2
    .parameter "pressedOn"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 511
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->invalidate()V

    .line 513
    return-void

    .line 511
    :cond_0
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method private withinVirtualButtonBounds(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v11, 0x4000

    .line 516
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getWidth()I

    move-result v6

    .line 517
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getHeight()I

    move-result v4

    .line 518
    .local v4, height:I
    div-int/lit8 v7, v6, 0x2

    int-to-float v0, v7

    .line 519
    .local v0, centerX:F
    div-int/lit8 v7, v4, 0x2

    int-to-float v1, v7

    .line 520
    .local v1, centerY:F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 523
    .local v5, radius:F
    sub-float v7, v0, p1

    float-to-double v7, v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-float v9, v1, p2

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 524
    .local v2, distance:D
    float-to-double v7, v5

    cmpg-double v7, v2, v7

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blinkTimeStr(Z)V
    .locals 3
    .parameter "blink"

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    goto :goto_0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 458
    const-string v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const-string v0, "%s:%s:%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 462
    const-string v0, "%s:%s.%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_2
    const-string v0, "%s:%s:%s.%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-nez v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getWidth()I

    move-result v14

    .line 577
    .local v14, width:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->setTotalTextWidth()V

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getWidth()I

    move-result v14

    .line 580
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 583
    :cond_2
    div-int/lit8 v15, v14, 0x2

    .line 584
    .local v15, xCenter:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getHeight()I

    move-result v1

    div-int/lit8 v16, v1, 0x2

    .line 586
    .local v16, yCenter:I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v4, v1, v2

    .line 587
    .local v4, textXstart:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const v3, 0x3e0f5c29

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    .line 589
    .local v5, textYstart:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const v2, 0x3f3851ec

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    const v2, 0x3f3851ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    mul-float/2addr v2, v3

    add-float v6, v1, v2

    .line 594
    .local v6, labelYStart:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-eqz v1, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 596
    .local v13, textColor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 608
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 611
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    goto/16 :goto_0

    .line 598
    .end local v13           #textColor:I
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .restart local v13       #textColor:I
    goto :goto_1
.end method

.method public redTimeStr(ZZ)V
    .locals 1
    .parameter "red"
    .parameter "forceUpdate"

    .prologue
    .line 446
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    :goto_0
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 447
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 448
    if-eqz p2, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->invalidate()V

    .line 451
    :cond_0
    return-void

    .line 446
    :cond_1
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method public registerStopTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "stopStartTextView"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    .line 623
    return-void
.end method

.method public registerVirtualButtonAction(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$2;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    :goto_0
    return-void

    .line 560
    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$3;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected resetTextSize()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 293
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 295
    return-void
.end method

.method protected setTextColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    return-void
.end method

.method public setTime(JZZ)V
    .locals 22
    .parameter "time"
    .parameter "showHundredths"
    .parameter "update"

    .prologue
    .line 305
    const/4 v12, 0x0

    .local v12, neg:Z
    const/16 v17, 0x0

    .line 306
    .local v17, showNeg:Z
    const/4 v5, 0x0

    .line 307
    .local v5, format:Ljava/lang/String;
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gez v18, :cond_0

    .line 308
    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    .line 309
    const/16 v17, 0x1

    move/from16 v12, v17

    .line 312
    .end local v12           #neg:Z
    :cond_0
    const-wide/16 v18, 0x3e8

    div-long v15, p1, v18

    .line 313
    .local v15, seconds:J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v15

    sub-long v18, p1, v18

    const-wide/16 v20, 0xa

    div-long v8, v18, v20

    .line 314
    .local v8, hundreds:J
    const-wide/16 v18, 0x3c

    div-long v10, v15, v18

    .line 315
    .local v10, minutes:J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v10

    sub-long v15, v15, v18

    .line 316
    const-wide/16 v18, 0x3c

    div-long v6, v10, v18

    .line 317
    .local v6, hours:J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v6

    sub-long v10, v10, v18

    .line 318
    const-wide/16 v18, 0x3e7

    cmp-long v18, v6, v18

    if-lez v18, :cond_1

    .line 319
    const-wide/16 v6, 0x0

    .line 323
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_2

    .line 324
    const/16 v17, 0x0

    .line 327
    :cond_2
    if-nez p3, :cond_5

    .line 328
    if-nez v12, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_3

    .line 329
    const-wide/16 v18, 0x1

    add-long v15, v15, v18

    .line 330
    const-wide/16 v18, 0x3c

    cmp-long v18, v15, v18

    if-nez v18, :cond_3

    .line 331
    const-wide/16 v15, 0x0

    .line 332
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 333
    const-wide/16 v18, 0x3c

    cmp-long v18, v10, v18

    if-nez v18, :cond_3

    .line 334
    const-wide/16 v10, 0x0

    .line 335
    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 339
    :cond_3
    const-wide/16 v18, 0xa

    cmp-long v18, v8, v18

    if-ltz v18, :cond_4

    const-wide/16 v18, 0x5a

    cmp-long v18, v8, v18

    if-lez v18, :cond_5

    .line 340
    :cond_4
    const/16 p4, 0x1

    .line 344
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v14

    .line 346
    .local v14, oldLength:I
    const-wide/16 v18, 0xa

    cmp-long v18, v6, v18

    if-ltz v18, :cond_b

    .line 347
    if-eqz v17, :cond_a

    const-string v5, "-%02d"

    .line 348
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    .line 356
    :goto_1
    const-wide/16 v18, 0xa

    cmp-long v18, v10, v18

    if-gez v18, :cond_6

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_f

    .line 357
    :cond_6
    if-eqz v17, :cond_e

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_e

    const-string v5, "-%02d"

    .line 358
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    .line 364
    :goto_3
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    .line 365
    if-eqz p3, :cond_11

    .line 366
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    .line 371
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v13

    .line 372
    .local v13, newLength:I
    if-eq v14, v13, :cond_8

    .line 373
    if-le v14, v13, :cond_7

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 376
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 379
    :cond_8
    if-eqz p4, :cond_9

    .line 380
    long-to-int v0, v6

    move/from16 v18, v0

    long-to-int v0, v10

    move/from16 v19, v0

    long-to-int v0, v15

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView;->getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->invalidate()V

    .line 384
    :cond_9
    return-void

    .line 347
    .end local v13           #newLength:I
    :cond_a
    const-string v5, "%02d"

    goto/16 :goto_0

    .line 349
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_d

    .line 350
    if-eqz v17, :cond_c

    const-string v5, "-%01d"

    .line 351
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 350
    :cond_c
    const-string v5, "%01d"

    goto :goto_5

    .line 353
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 357
    :cond_e
    const-string v5, "%02d"

    goto/16 :goto_2

    .line 360
    :cond_f
    if-eqz v17, :cond_10

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_10

    const-string v5, "-%01d"

    .line 361
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    goto/16 :goto_3

    .line 360
    :cond_10
    const-string v5, "%01d"

    goto :goto_6

    .line 368
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public setVirtualButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 507
    return-void
.end method

.method public showTime(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->invalidate()V

    .line 443
    return-void
.end method
