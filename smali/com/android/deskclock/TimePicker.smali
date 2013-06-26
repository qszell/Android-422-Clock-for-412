.class public Lcom/android/deskclock/TimePicker;
.super Lcom/android/deskclock/TimerSetupView;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/TimePicker$1;,
        Lcom/android/deskclock/TimePicker$SavedState;
    }
.end annotation


# instance fields
.field private mAmPmLabel:Landroid/widget/TextView;

.field private mAmPmState:I

.field private mAmpm:[Ljava/lang/String;

.field private final mIs24HoursMode:Z

.field private final mNoAmPmLabel:Ljava/lang/String;

.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/TimerSetupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private addClickedNumber(I)V
    .locals 4
    .parameter "val"

    .prologue
    .line 210
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 211
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 211
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
    :cond_0
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 215
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 217
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private canAddDigits()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v0

    .line 258
    .local v0, time:I
    iget-boolean v3, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v3, :cond_2

    .line 259
    if-lt v0, v1, :cond_1

    const/16 v3, 0xc

    if-gt v0, v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 259
    goto :goto_0

    .line 262
    :cond_2
    if-ltz v0, :cond_3

    const/16 v3, 0x17

    if-gt v0, v3, :cond_3

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private enableSetButton()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    iget-object v3, p0, Lcom/android/deskclock/TimePicker;->mSetButton:Landroid/widget/Button;

    if-nez v3, :cond_0

    .line 466
    :goto_0
    return-void

    .line 453
    :cond_0
    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/deskclock/TimePicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 459
    :cond_1
    iget-boolean v3, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v3, :cond_4

    .line 460
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v0

    .line 461
    .local v0, time:I
    iget-object v3, p0, Lcom/android/deskclock/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    const/16 v4, 0x3c

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5f

    if-le v0, v4, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 464
    .end local v0           #time:I
    :cond_4
    iget-object v3, p0, Lcom/android/deskclock/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private getEnteredTime()I
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private onLeftClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v0

    .line 223
    .local v0, time:I
    iget-boolean v1, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 226
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 228
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 231
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private onRightClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v0

    .line 240
    .local v0, time:I
    iget-boolean v1, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 243
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 245
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 249
    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private setKeyRange(I)V
    .locals 3
    .parameter "maxKey"

    .prologue
    .line 423
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 426
    :cond_1
    return-void
.end method

.method private showAmPm()V
    .locals 3

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v0, :cond_0

    .line 190
    iget v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->showAmPm()V

    .line 133
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateLeftRightButtons()V

    .line 134
    invoke-virtual {p0}, Lcom/android/deskclock/TimePicker;->updateTime()V

    .line 136
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateNumericKeys()V

    .line 138
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->enableSetButton()V

    .line 140
    invoke-virtual {p0}, Lcom/android/deskclock/TimePicker;->updateDeleteButton()V

    .line 142
    return-void
.end method

.method private updateLeftRightButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v1

    .line 430
    .local v1, time:I
    iget-boolean v2, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v2, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->canAddDigits()Z

    move-result v0

    .line 432
    .local v0, enable:Z
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 436
    :cond_0
    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_3

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateNumericKeys()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/16 v3, 0x9

    .line 268
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v0

    .line 269
    .local v0, time:I
    iget-boolean v1, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v1, :cond_39

    .line 270
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 271
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    if-nez v0, :cond_5

    .line 273
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v1, v7, :cond_3

    .line 274
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 275
    :cond_3
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v1, v6, :cond_4

    .line 276
    invoke-direct {p0, v5}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 278
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 280
    :cond_5
    if-ne v0, v6, :cond_9

    .line 281
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v1, v7, :cond_7

    .line 282
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 283
    :cond_7
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v1, v6, :cond_8

    .line 284
    invoke-direct {p0, v5}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 286
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 288
    :cond_9
    if-ne v0, v7, :cond_d

    .line 289
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-eq v1, v7, :cond_a

    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v1, v6, :cond_b

    .line 290
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 291
    :cond_b
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-nez v1, :cond_c

    .line 292
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 294
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 296
    :cond_d
    if-gt v0, v5, :cond_e

    .line 297
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 298
    :cond_e
    if-gt v0, v3, :cond_f

    .line 299
    invoke-direct {p0, v5}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 300
    :cond_f
    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    .line 301
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 302
    :cond_10
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    const/16 v1, 0x13

    if-gt v0, v1, :cond_11

    .line 303
    invoke-direct {p0, v5}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 304
    :cond_11
    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    const/16 v1, 0x19

    if-gt v0, v1, :cond_12

    .line 305
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 306
    :cond_12
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_13

    .line 307
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 308
    :cond_13
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_14

    const/16 v1, 0x23

    if-gt v0, v1, :cond_14

    .line 309
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 310
    :cond_14
    const/16 v1, 0x24

    if-lt v0, v1, :cond_15

    const/16 v1, 0x27

    if-gt v0, v1, :cond_15

    .line 311
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 312
    :cond_15
    const/16 v1, 0x28

    if-lt v0, v1, :cond_16

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_16

    .line 313
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 314
    :cond_16
    const/16 v1, 0x2e

    if-lt v0, v1, :cond_17

    const/16 v1, 0x31

    if-gt v0, v1, :cond_17

    .line 315
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 316
    :cond_17
    const/16 v1, 0x32

    if-lt v0, v1, :cond_18

    const/16 v1, 0x37

    if-gt v0, v1, :cond_18

    .line 317
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 318
    :cond_18
    const/16 v1, 0x38

    if-lt v0, v1, :cond_19

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_19

    .line 319
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 320
    :cond_19
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x41

    if-gt v0, v1, :cond_1a

    .line 321
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 322
    :cond_1a
    const/16 v1, 0x46

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_1b

    .line 323
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 324
    :cond_1b
    const/16 v1, 0x50

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x55

    if-gt v0, v1, :cond_1c

    .line 325
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 326
    :cond_1c
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1d

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_1d

    .line 327
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 328
    :cond_1d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_1e

    .line 329
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 330
    :cond_1e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_1f

    .line 331
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 332
    :cond_1f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_20

    const/16 v1, 0x73

    if-gt v0, v1, :cond_20

    .line 333
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 334
    :cond_20
    const/16 v1, 0x74

    if-lt v0, v1, :cond_21

    const/16 v1, 0x77

    if-gt v0, v1, :cond_21

    .line 335
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 336
    :cond_21
    const/16 v1, 0x78

    if-lt v0, v1, :cond_22

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_22

    .line 337
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 338
    :cond_22
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_23

    const/16 v1, 0x81

    if-gt v0, v1, :cond_23

    .line 339
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 340
    :cond_23
    const/16 v1, 0x82

    if-lt v0, v1, :cond_24

    const/16 v1, 0x87

    if-gt v0, v1, :cond_24

    .line 341
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 342
    :cond_24
    const/16 v1, 0x88

    if-lt v0, v1, :cond_25

    const/16 v1, 0x8b

    if-gt v0, v1, :cond_25

    .line 343
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 344
    :cond_25
    const/16 v1, 0x8c

    if-lt v0, v1, :cond_26

    const/16 v1, 0x91

    if-gt v0, v1, :cond_26

    .line 345
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 346
    :cond_26
    const/16 v1, 0x92

    if-lt v0, v1, :cond_27

    const/16 v1, 0x95

    if-gt v0, v1, :cond_27

    .line 347
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 348
    :cond_27
    const/16 v1, 0x96

    if-lt v0, v1, :cond_28

    const/16 v1, 0x9b

    if-gt v0, v1, :cond_28

    .line 349
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 350
    :cond_28
    const/16 v1, 0x9c

    if-lt v0, v1, :cond_29

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_29

    .line 351
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 352
    :cond_29
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2a

    const/16 v1, 0xa5

    if-gt v0, v1, :cond_2a

    .line 353
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 354
    :cond_2a
    const/16 v1, 0xa6

    if-lt v0, v1, :cond_2b

    const/16 v1, 0xa9

    if-gt v0, v1, :cond_2b

    .line 355
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 356
    :cond_2b
    const/16 v1, 0xaa

    if-lt v0, v1, :cond_2c

    const/16 v1, 0xaf

    if-gt v0, v1, :cond_2c

    .line 357
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 358
    :cond_2c
    const/16 v1, 0xb0

    if-lt v0, v1, :cond_2d

    const/16 v1, 0xb3

    if-gt v0, v1, :cond_2d

    .line 359
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 360
    :cond_2d
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_2e

    const/16 v1, 0xb9

    if-gt v0, v1, :cond_2e

    .line 361
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 362
    :cond_2e
    const/16 v1, 0xba

    if-lt v0, v1, :cond_2f

    const/16 v1, 0xbd

    if-gt v0, v1, :cond_2f

    .line 363
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 364
    :cond_2f
    const/16 v1, 0xbe

    if-lt v0, v1, :cond_30

    const/16 v1, 0xc3

    if-gt v0, v1, :cond_30

    .line 365
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 366
    :cond_30
    const/16 v1, 0xc4

    if-lt v0, v1, :cond_31

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_31

    .line 367
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 368
    :cond_31
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_32

    const/16 v1, 0xcd

    if-gt v0, v1, :cond_32

    .line 369
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 370
    :cond_32
    const/16 v1, 0xce

    if-lt v0, v1, :cond_33

    const/16 v1, 0xd1

    if-gt v0, v1, :cond_33

    .line 371
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 372
    :cond_33
    const/16 v1, 0xd2

    if-lt v0, v1, :cond_34

    const/16 v1, 0xd7

    if-gt v0, v1, :cond_34

    .line 373
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 374
    :cond_34
    const/16 v1, 0xd8

    if-lt v0, v1, :cond_35

    const/16 v1, 0xdb

    if-gt v0, v1, :cond_35

    .line 375
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 376
    :cond_35
    const/16 v1, 0xdc

    if-lt v0, v1, :cond_36

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_36

    .line 377
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 378
    :cond_36
    const/16 v1, 0xe2

    if-lt v0, v1, :cond_37

    const/16 v1, 0xe5

    if-gt v0, v1, :cond_37

    .line 379
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 380
    :cond_37
    const/16 v1, 0xe6

    if-lt v0, v1, :cond_38

    const/16 v1, 0xeb

    if-gt v0, v1, :cond_38

    .line 381
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 382
    :cond_38
    const/16 v1, 0xec

    if-lt v0, v1, :cond_0

    .line 383
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 387
    :cond_39
    iget v1, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    if-eqz v1, :cond_3a

    .line 388
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 389
    :cond_3a
    if-nez v0, :cond_3b

    .line 390
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    .line 393
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 395
    :cond_3b
    if-gt v0, v3, :cond_3c

    .line 396
    invoke-direct {p0, v5}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 397
    :cond_3c
    const/16 v1, 0x5f

    if-gt v0, v1, :cond_3d

    .line 398
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 399
    :cond_3d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_3e

    .line 400
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 401
    :cond_3e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_3f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_3f

    .line 402
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 403
    :cond_3f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_40

    const/16 v1, 0x73

    if-gt v0, v1, :cond_40

    .line 404
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 405
    :cond_40
    const/16 v1, 0x74

    if-lt v0, v1, :cond_41

    const/16 v1, 0x77

    if-gt v0, v1, :cond_41

    .line 406
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 407
    :cond_41
    const/16 v1, 0x78

    if-lt v0, v1, :cond_42

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_42

    .line 408
    invoke-direct {p0, v3}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 409
    :cond_42
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 410
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 93
    const/high16 v2, 0x7f0e

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    .local v1, val:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/deskclock/TimePicker;->addClickedNumber(I)V

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateKeypad()V

    .line 115
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_4

    .line 100
    iget-boolean v2, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_2

    .line 101
    iput v5, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 102
    :cond_2
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    aput v5, v2, v3

    .line 107
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    goto :goto_0

    .line 109
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->onLeftClicked()V

    goto :goto_0

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->onRightClicked()V

    goto :goto_0
.end method

.method public getHours()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 474
    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int v0, v3, v4

    .line 475
    .local v0, hours:I
    if-ne v0, v1, :cond_0

    .line 476
    iget v3, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    packed-switch v3, :pswitch_data_0

    .line 487
    :cond_0
    iget v3, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :goto_0
    add-int/2addr v1, v0

    :goto_1
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 480
    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 482
    goto :goto_1

    :cond_1
    move v1, v2

    .line 487
    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f040024

    return v0
.end method

.method public getMinutes()I
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/deskclock/TimePicker;->doOnClick(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0}, Lcom/android/deskclock/TimerSetupView;->onFinishInflate()V

    .line 68
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/TimePicker;->mAmpm:[Ljava/lang/String;

    .line 71
    iget-boolean v1, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    const v2, 0x7f0d0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    const v2, 0x7f0d0077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/android/deskclock/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/deskclock/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    .line 81
    iput v4, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    .line 82
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateKeypad()V

    .line 83
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/deskclock/TimePicker;->mAmpm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/deskclock/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 120
    iput v0, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    .line 121
    invoke-virtual {p0}, Lcom/android/deskclock/TimePicker;->reset()V

    .line 122
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateKeypad()V

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 505
    instance-of v1, p1, Lcom/android/deskclock/TimePicker$SavedState;

    if-nez v1, :cond_0

    .line 506
    invoke-super {p0, p1}, Lcom/android/deskclock/TimerSetupView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 521
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 510
    check-cast v0, Lcom/android/deskclock/TimePicker$SavedState;

    .line 511
    .local v0, savedState:Lcom/android/deskclock/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/android/deskclock/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/deskclock/TimerSetupView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 513
    iget v1, v0, Lcom/android/deskclock/TimePicker$SavedState;->mInputPointer:I

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 514
    iget-object v1, v0, Lcom/android/deskclock/TimePicker$SavedState;->mInput:[I

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    .line 515
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    if-nez v1, :cond_1

    .line 516
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    .line 517
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 519
    :cond_1
    iget v1, v0, Lcom/android/deskclock/TimePicker$SavedState;->mAmPmState:I

    iput v1, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    .line 520
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 495
    invoke-super {p0}, Lcom/android/deskclock/TimerSetupView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 496
    .local v0, parcel:Landroid/os/Parcelable;
    new-instance v1, Lcom/android/deskclock/TimePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/android/deskclock/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 497
    .local v1, state:Lcom/android/deskclock/TimePicker$SavedState;
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iput-object v2, v1, Lcom/android/deskclock/TimePicker$SavedState;->mInput:[I

    .line 498
    iget v2, p0, Lcom/android/deskclock/TimePicker;->mAmPmState:I

    iput v2, v1, Lcom/android/deskclock/TimePicker$SavedState;->mAmPmState:I

    .line 499
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    iput v2, v1, Lcom/android/deskclock/TimePicker$SavedState;->mInputPointer:I

    .line 500
    return-object v1
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/deskclock/TimePicker;->mSetButton:Landroid/widget/Button;

    .line 470
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->enableSetButton()V

    .line 471
    return-void
.end method

.method protected updateTime()V
    .locals 14

    .prologue
    const/16 v10, 0x9

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v5, -0x1

    .line 153
    const/4 v1, -0x1

    .line 154
    .local v1, hours1:I
    invoke-direct {p0}, Lcom/android/deskclock/TimePicker;->getEnteredTime()I

    move-result v8

    .line 157
    .local v8, time:I
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-le v0, v5, :cond_7

    .line 159
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ltz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v9, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    aget v6, v0, v9

    .line 161
    .local v6, digit:I
    iget-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v0, :cond_0

    if-lt v6, v11, :cond_0

    if-le v6, v10, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v0, :cond_2

    if-lt v6, v12, :cond_2

    if-gt v6, v10, :cond_2

    .line 163
    :cond_1
    const/4 v1, -0x2

    .line 168
    .end local v6           #digit:I
    :cond_2
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v11, :cond_5

    const/4 v0, -0x2

    if-eq v1, v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v9, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    aget v0, v0, v9

    mul-int/lit8 v0, v0, 0xa

    iget-object v9, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v10, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    add-int v7, v0, v9

    .line 170
    .local v7, digits:I
    iget-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    if-lt v7, v0, :cond_3

    const/16 v0, 0x19

    if-le v7, v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/deskclock/TimePicker;->mIs24HoursMode:Z

    if-nez v0, :cond_5

    const/16 v0, 0xd

    if-lt v7, v0, :cond_5

    const/16 v0, 0xf

    if-gt v7, v0, :cond_5

    .line 172
    :cond_4
    const/4 v1, -0x2

    .line 176
    .end local v7           #digits:I
    :cond_5
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ne v0, v11, :cond_6

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v1, v0, v11

    .line 182
    :cond_6
    :goto_0
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v12, :cond_8

    move v2, v5

    .line 183
    .local v2, hours2:I
    :goto_1
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v13, :cond_9

    move v3, v5

    .line 184
    .local v3, minutes1:I
    :goto_2
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-gez v0, :cond_a

    move v4, v5

    .line 185
    .local v4, minutes2:I
    :goto_3
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mEnteredTime:Lcom/android/deskclock/timer/TimerView;

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerView;->setTime(IIIII)V

    .line 186
    return-void

    .line 180
    .end local v2           #hours2:I
    .end local v3           #minutes1:I
    .end local v4           #minutes2:I
    :cond_7
    const/4 v1, -0x1

    goto :goto_0

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v2, v0, v12

    goto :goto_1

    .line 183
    .restart local v2       #hours2:I
    :cond_9
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v3, v0, v13

    goto :goto_2

    .line 184
    .restart local v3       #minutes1:I
    :cond_a
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v9, 0x0

    aget v4, v0, v9

    goto :goto_3
.end method
