.class public Lcom/android/deskclock/timer/TimerView;
.super Landroid/widget/LinearLayout;
.source "TimerView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private final mGrayColor:I

.field private mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

.field private mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

.field private mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

.field private mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

.field private mOriginalHoursTypeface:Landroid/graphics/Typeface;

.field private mSeconds:Landroid/widget/TextView;

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    .line 50
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    .line 57
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    .line 58
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    .line 59
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    .line 60
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    goto :goto_0
.end method

.method public setTime(IIIII)V
    .locals 7
    .parameter "hoursTensDigit"
    .parameter "hoursOnesDigit"
    .parameter "minutesTensDigit"
    .parameter "minutesOnesDigit"
    .parameter "seconds"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 101
    if-ne p2, v6, :cond_7

    .line 102
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    .line 113
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 114
    if-ne p3, v6, :cond_8

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 122
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 123
    if-ne p4, v6, :cond_9

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 132
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    return-void

    .line 86
    :cond_5
    if-ne p1, v6, :cond_6

    .line 87
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    .line 97
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/android/deskclock/ZeroTopPaddingTextView;->updatePadding()V

    goto/16 :goto_1

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Lcom/android/deskclock/ZeroTopPaddingTextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ZeroTopPaddingTextView;->setTextColor(I)V

    goto/16 :goto_3
.end method
