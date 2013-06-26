.class public Lcom/android/deskclock/ZeroTopPaddingTextView;
.super Landroid/widget/TextView;
.source "ZeroTopPaddingTextView.java"


# static fields
.field private static final SAN_SERIF_BOLD:Landroid/graphics/Typeface;


# instance fields
.field private mPaddingRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "san-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/ZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lcom/android/deskclock/ZeroTopPaddingTextView;->mPaddingRight:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setIncludeFontPadding(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    .line 52
    return-void
.end method


# virtual methods
.method public updatePadding()V
    .locals 7

    .prologue
    .line 55
    const v1, 0x3ea7ef9e

    .line 56
    .local v1, paddingRatio:F
    const/high16 v0, 0x3e80

    .line 57
    .local v0, bottomPaddingRatio:F
    invoke-virtual {p0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/ZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const v1, 0x3e54fdf4

    .line 59
    const v0, 0x3e54fdf4

    .line 63
    :cond_0
    const/4 v2, 0x0

    neg-float v3, v1

    invoke-virtual {p0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/deskclock/ZeroTopPaddingTextView;->mPaddingRight:I

    neg-float v5, v0

    invoke-virtual {p0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->getTextSize()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setPadding(IIII)V

    .line 65
    return-void
.end method
