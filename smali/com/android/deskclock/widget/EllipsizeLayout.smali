.class public Lcom/android/deskclock/widget/EllipsizeLayout;
.super Landroid/widget/LinearLayout;
.source "EllipsizeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/EllipsizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/EllipsizeLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_7

    .line 29
    const/4 v15, 0x0

    .line 30
    .local v15, totalLength:I
    const/4 v13, 0x0

    .line 31
    .local v13, outOfSpec:Z
    const/4 v8, 0x0

    .line 32
    .local v8, ellipView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/EllipsizeLayout;->getChildCount()I

    move-result v7

    .line 34
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_0
    if-ge v9, v7, :cond_4

    if-nez v13, :cond_4

    .line 35
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/deskclock/widget/EllipsizeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, child:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 37
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    .line 38
    check-cast v16, Landroid/widget/TextView;

    .line 39
    .local v16, tv:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    if-nez v8, :cond_2

    .line 41
    move-object/from16 v8, v16

    .line 43
    const v1, 0x7fffffff

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 50
    .end local v16           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .local v10, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    or-int/2addr v13, v1

    .line 53
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/widget/EllipsizeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v15, v1

    .line 34
    .end local v10           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 46
    .restart local v16       #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v13, 0x1

    goto :goto_1

    .line 52
    .end local v16           #tv:Landroid/widget/TextView;
    .restart local v10       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 57
    .end local v2           #child:Landroid/view/View;
    .end local v10           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-eqz v8, :cond_5

    if-nez v15, :cond_8

    :cond_5
    const/4 v1, 0x1

    :goto_3
    or-int/2addr v13, v1

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 60
    .local v14, parentWidth:I
    if-nez v13, :cond_7

    if-le v15, v14, :cond_7

    .line 61
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v3, v15, v14

    sub-int v11, v1, v3

    .line 63
    .local v11, maxWidth:I
    const/4 v12, 0x0

    .line 64
    .local v12, minWidth:I
    if-ge v11, v12, :cond_6

    .line 65
    move v11, v12

    .line 67
    :cond_6
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 71
    .end local v7           #count:I
    .end local v8           #ellipView:Landroid/widget/TextView;
    .end local v9           #ii:I
    .end local v11           #maxWidth:I
    .end local v12           #minWidth:I
    .end local v13           #outOfSpec:Z
    .end local v14           #parentWidth:I
    .end local v15           #totalLength:I
    :cond_7
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 72
    return-void

    .line 57
    .restart local v7       #count:I
    .restart local v8       #ellipView:Landroid/widget/TextView;
    .restart local v9       #ii:I
    .restart local v13       #outOfSpec:Z
    .restart local v15       #totalLength:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method
