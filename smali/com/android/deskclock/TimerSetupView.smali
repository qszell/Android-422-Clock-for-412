.class public Lcom/android/deskclock/TimerSetupView;
.super Landroid/widget/LinearLayout;
.source "TimerSetupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field protected mEnteredTime:Lcom/android/deskclock/timer/TimerView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field protected mLeft:Landroid/widget/Button;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field protected mStart:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/TimerSetupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    .line 36
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    .line 37
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 51
    iput-object p1, p0, Lcom/android/deskclock/TimerSetupView;->mContext:Landroid/content/Context;

    .line 52
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    return-void
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 126
    const/high16 v2, 0x7f0e

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 128
    .local v1, val:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 130
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 134
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v4, v4, v0

    aput v4, v2, v3

    .line 134
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 137
    :cond_2
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 138
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 139
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    goto :goto_0

    .line 145
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_0

    .line 146
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 147
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    aput v5, v2, v3

    .line 151
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 152
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f040025

    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x258

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x3c

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

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/deskclock/TimerSetupView;->doOnClick(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 121
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 122
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0e0066

    const v9, 0x7f0e0065

    const v8, 0x7f0e0064

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v5, 0x7f0e0072

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, v1:Landroid/view/View;
    const v5, 0x7f0e0073

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, v2:Landroid/view/View;
    const v5, 0x7f0e0074

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, v3:Landroid/view/View;
    const v5, 0x7f0e0075

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, v4:Landroid/view/View;
    const v5, 0x7f0e006a

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/timer/TimerView;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mEnteredTime:Lcom/android/deskclock/timer/TimerView;

    .line 70
    const v5, 0x7f0e0071

    invoke-virtual {p0, v5}, Lcom/android/deskclock/TimerSetupView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    .line 71
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v12

    .line 75
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 76
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x3

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 78
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x4

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 79
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x5

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 80
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x6

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 82
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x7

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 83
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 84
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/16 v7, 0x9

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 86
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    .line 87
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v11

    .line 88
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    .line 89
    invoke-virtual {p0, v11}, Lcom/android/deskclock/TimerSetupView;->setLeftRightEnabled(Z)V

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    const-string v6, "%d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    const/high16 v6, 0x7f0e

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 97
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 161
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 162
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerStartButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "start"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    .line 101
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 178
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 179
    return-void
.end method

.method public restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "inState"
    .parameter "key"

    .prologue
    .line 190
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 191
    .local v1, input:[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    if-ge v0, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 194
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 195
    iput v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 200
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "outState"
    .parameter "key"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 187
    return-void
.end method

.method protected setLeftRightEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 111
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 112
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 115
    :cond_0
    return-void

    .line 111
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStartButton()V
    .locals 3

    .prologue
    .line 104
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_0
    return-void

    .line 104
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTime()V
    .locals 8

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mEnteredTime:Lcom/android/deskclock/timer/TimerView;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerView;->setTime(IIIII)V

    .line 171
    return-void
.end method
