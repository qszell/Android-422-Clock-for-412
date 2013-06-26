.class public Lcom/android/deskclock/widget/ActionableToastBar;
.super Landroid/widget/LinearLayout;
.source "ActionableToastBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/view/View;

.field private mActionDescriptionIcon:Landroid/widget/ImageView;

.field private mActionDescriptionView:Landroid/widget/TextView;

.field private mActionIcon:Landroid/view/View;

.field private mActionText:Landroid/widget/TextView;

.field private final mBottomMarginSizeInConversation:I

.field private mHidden:Z

.field private mHideAnimation:Landroid/animation/Animator;

.field private mShowAnimation:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHidden:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mBottomMarginSizeInConversation:I

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f04

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    return-void
.end method

.method private getHideAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    .line 194
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/deskclock/widget/ActionableToastBar$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/widget/ActionableToastBar$3;-><init>(Lcom/android/deskclock/widget/ActionableToastBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getShowAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    .line 166
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/deskclock/widget/ActionableToastBar$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/widget/ActionableToastBar$2;-><init>(Lcom/android/deskclock/widget/ActionableToastBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHidden:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHidden:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getHideAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->setAlpha(F)V

    .line 156
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEventInToastBar(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    :goto_0
    return v4

    .line 218
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 219
    .local v1, xy:[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 220
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 221
    .local v2, y:F
    invoke-virtual {p0, v1}, Lcom/android/deskclock/widget/ActionableToastBar;->getLocationOnScreen([I)V

    .line 222
    aget v5, v1, v4

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    aget v5, v1, v4

    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    aget v5, v1, v3

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    aget v5, v1, v3

    invoke-virtual {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    const v0, 0x7f0e0001

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionButton:Landroid/view/View;

    .line 79
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionIcon:Landroid/view/View;

    .line 80
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public show(Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZ)V
    .locals 4
    .parameter "listener"
    .parameter "descriptionIconResourceId"
    .parameter "descriptionText"
    .parameter "showActionIcon"
    .parameter "actionTextResource"
    .parameter "replaceVisibleToast"

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 110
    iget-boolean v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHidden:Z

    if-nez v2, :cond_0

    if-nez p6, :cond_0

    .line 138
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionButton:Landroid/view/View;

    new-instance v3, Lcom/android/deskclock/widget/ActionableToastBar$1;

    invoke-direct {v3, p0, p1}, Lcom/android/deskclock/widget/ActionableToastBar$1;-><init>(Lcom/android/deskclock/widget/ActionableToastBar;Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    if-nez p2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionIcon:Landroid/view/View;

    if-eqz p4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iput-boolean v1, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mHidden:Z

    .line 137
    invoke-direct {p0}, Lcom/android/deskclock/widget/ActionableToastBar;->getShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/deskclock/widget/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
