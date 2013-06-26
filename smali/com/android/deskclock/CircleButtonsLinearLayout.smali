.class public Lcom/android/deskclock/CircleButtonsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CircleButtonsLinearLayout.java"


# instance fields
.field private mCircleTimerViewId:I

.field private mContext:Landroid/content/Context;

.field private mCtv:Lcom/android/deskclock/CircleTimerView;

.field private mDiamOffset:F

.field private mLabel:Landroid/widget/FrameLayout;

.field private mLabelId:I

.field private mLabelText:Landroid/widget/TextView;

.field private mLabelTextId:I

.field private mLeft:Landroid/widget/ImageButton;

.field private mLeftButtonId:I

.field private mLeftButtonPadding:F

.field private mRight:Landroid/widget/ImageButton;

.field private mRightButtonId:I

.field private mRightButtonPadding:F

.field private mStop:Landroid/widget/TextView;

.field private mStopButtonId:I

.field private mStrokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/CircleButtonsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Lcom/android/deskclock/CircleButtonsLinearLayout;->remeasureViews()V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    return-void
.end method

.method protected remeasureViews()V
    .locals 22

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCircleTimerViewId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 175
    :goto_0
    return-void

    .line 78
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeftButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeft:Landroid/widget/ImageButton;

    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRightButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRight:Landroid/widget/ImageButton;

    .line 80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStopButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStop:Landroid/widget/TextView;

    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabel:Landroid/widget/FrameLayout;

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelTextId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleButtonsLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelText:Landroid/widget/TextView;

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/deskclock/CircleTimerView;->getMeasuredWidth()I

    move-result v5

    .line 86
    .local v5, frameWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/deskclock/CircleTimerView;->getMeasuredHeight()I

    move-result v4

    .line 87
    .local v4, frameHeight:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 88
    .local v9, minBound:I
    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mDiamOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v3, v0

    .line 90
    .local v3, circleDiam:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStop:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .local v14, stopParams:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 92
    if-ne v9, v5, :cond_2

    .line 93
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v19, v4, v5

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 96
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    .local v6, labelParams:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 100
    if-ne v9, v5, :cond_3

    .line 101
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v19, v4, v5

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 155
    :cond_3
    div-int/lit8 v10, v3, 0x2

    .line 157
    .local v10, r:I
    div-int/lit8 v18, v4, 0x2

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 159
    .local v17, y:I
    const-wide/high16 v18, 0x4000

    add-int v20, v10, v17

    sub-int v21, v10, v17

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v15, v18, v20

    .line 161
    .local v15, w:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    double-to-int v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 164
    .end local v6           #labelParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #r:I
    .end local v15           #w:D
    .end local v17           #y:I
    :cond_4
    sub-int v18, v5, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStrokeSize:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v13, v18, v19

    .line 166
    .local v13, sideMarginOffset:I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeftButtonPadding:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v13, v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 167
    .local v7, leftMarginOffset:I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRightButtonPadding:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v13, v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 168
    .local v11, rightMarginOffset:I
    sub-int v18, v4, v9

    div-int/lit8 v2, v18, 0x2

    .line 169
    .local v2, bottomMarginOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeft:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 170
    .local v8, leftParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 171
    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .local v12, rightParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 174
    iput v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0
.end method

.method public setCircleTimerViewIds(IIIIIIII)V
    .locals 4
    .parameter "circleTimerViewId"
    .parameter "leftButtonId"
    .parameter "rightButtonId"
    .parameter "stopButtonId"
    .parameter "leftButtonPaddingDimenId"
    .parameter "rightButtonPaddingDimenId"
    .parameter "labelId"
    .parameter "labelTextId"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mCircleTimerViewId:I

    .line 45
    iput p2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeftButtonId:I

    .line 46
    iput p3, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRightButtonId:I

    .line 47
    iput p4, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStopButtonId:I

    .line 48
    iput p7, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelId:I

    .line 49
    iput p8, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLabelTextId:I

    .line 50
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mLeftButtonPadding:F

    .line 51
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mRightButtonPadding:F

    .line 53
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 55
    .local v0, diamondStrokeSize:F
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 57
    .local v1, markerStrokeSize:F
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStrokeSize:F

    .line 58
    iget v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mStrokeSize:F

    invoke-static {v2, v0, v1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLinearLayout;->mDiamOffset:F

    .line 60
    return-void
.end method
